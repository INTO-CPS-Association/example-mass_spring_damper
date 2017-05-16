from pandas import DataFrame, read_csv
import matplotlib.pyplot as plt
import pandas as pd
# define data location
df = read_csv('result-not-stabilized.csv')
df2 = read_csv('result.csv')

df.fillna(0, inplace=True)
df2.fillna(0, inplace=True)

fig, axarr = plt.subplots(2, sharex=True)

#fig = plt.figure()
ax1=axarr[0]
ax1.title.set_text('window')

ax2 = axarr[1]
ax2.title.set_text('stabalized')


name='fk'
ax1.plot(df['time'], df[name], label=name)
ax2.plot(df2['time'], df2[name], label=name)

name='x1'
ax1.plot(df['time'], df[name], label=name)
ax2.plot(df2['time'], df2[name],  label=name)

name='v1'
ax1.plot(df['time'], df[name], label=name)
ax2.plot(df2['time'], df2[name],  label=name)


name='x2'
ax1.plot(df['time'], df[name], label=name)
ax2.plot(df2['time'], df2[name],  label=name)

name='v2'
ax1.plot(df['time'], df[name], label=name)
ax2.plot(df2['time'], df2[name],  label=name)

#plt.ylim( (-100, 100) )

plt.legend(bbox_to_anchor=(1, 1),
           bbox_transform=plt.gcf().transFigure)

plt.show()
