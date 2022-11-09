import discord
from discord.ext import commands

bot = commands.Bot(command_prefix="!", description="The description")

@bot.event
async def  on_ready():
    print("Online")

@bot.command()
async def ping(ctx):
    await ctx.send('-_-')

bot.run('MTAzODY4NDIzNTA5NzE5ODU5Mg.GsNQ9F.X3oDniz4suaIG9EM9barOjr5D3Pe1D-2uk9Hnk')
