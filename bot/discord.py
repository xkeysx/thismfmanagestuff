import discord
from discord.ext import commands

intents = discord.Intents.default()
intents.message_content = True
bot = commands.Bot(command_prefix='>', intents=intents)

@bot.command()
async def ping(ctx):
    await ctx.send('pong')

bot.run('MTA0MzUyMDQ5NzIzMDU0OTA3Mg.GG65E-.5h6GheJXT7bJJx9N3XW-U4Rce3qxa3qkTa0Yeg')

