import discord
from discord.ext import commands

bot = commands.Bot(command_prefix="eve ", description="The description")

@bot.event
async def  on_ready():
    print("Eve is online!")
    await bot.change_presence(activity=discord.Game('Hide and Seek'))

@bot.command()
async def ping(ctx):
    await ctx.send(';_;')

@bot.event
async def on_message(message):
    if message.content == "eve":
        await message.channel.send('<3')


bot.run("MTA0MzUyMDQ5NzIzMDU0OTA3Mg.GG65E-.5h6GheJXT7bJJx9N3XW-U4Rce3qxa3qkTa0Yeg")
