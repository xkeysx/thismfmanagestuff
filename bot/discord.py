import discord
from discord.ext import commands

bot = commands.Bot(command_prefix="eve ", description="The description")

@bot.event
async def  on_ready():
    print("Eve is online!")
    await bot.change_presence(activity=discord.Game('classical music for daddy'))

@bot.command()
async def ping(ctx):
    await ctx.send(';_;')

@bot.event
async def on_message(message):
    if message.content == "eve":
        await message.channel.send('<3')


bot.run('MTAzODY4NDIzNTA5NzE5ODU5Mg.GsNQ9F.X3oDniz4suaIG9EM9barOjr5D3Pe1D-2uk9Hnk')
