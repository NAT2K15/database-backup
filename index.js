// vars //
const mysqldump = require('mysqldump');
const config = require('./config.json');
const { Webhook, MessageBuilder } = require('discord-webhook-node');
const root = GetResourcePath(GetCurrentResourceName());
let num = 0;


// loop // 
setInterval(async() => {
    num = num + 1;
    let filename = `${root}/sql/${config.database_info.database}-${num}-${Date.now()}.sql`
    mysqldump({
        connection: {
            host: config.database_info.host,
            user: config.database_info.user,
            password: config.database_info.password,
            database: config.database_info.database,
        },
        dumpToFile: filename,
    })
    await Delay(3500)
    if (config.discord.savetodiscord) {
        let webhook = config.discord.webhook
        if (!webhook) return;
        const hook = new Webhook(webhook);
        let embed = new MessageBuilder()
            .setAuthor('Database backup', 'https://nat2k15.xyz/assets/logo.png', 'https://github.com/nat2k15')
            .setTimestamp()
            .setColor(config.discord.color)
            .addField(`File Path`, `\`${filename}\``)
            .addField(`Database`, config.database_info.database)
            .addField(`Date`, `${new Date()}`)
            .setFooter(config.discord.footer)
        hook.send(embed)
        hook.sendFile(filename)
    }

}, config.interval.time * 1000 * 60);


// functions // 
function Delay(ms) {
    return new Promise((res) => {
        setTimeout(res, ms)
    })
}
