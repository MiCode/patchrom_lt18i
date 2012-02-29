.class Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
.super Ljava/lang/Object;
.source "DiskStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DiskStatsService$DiskYaffsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskStatHistSample"
.end annotation


# instance fields
.field private final mGCs:[J

.field private mLastSample:I

.field private final mPassiveGCs:[J

.field private final mSampleTime:[J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    .line 136
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    .line 137
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    .line 138
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DiskStatsService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;-><init>()V

    return-void
.end method


# virtual methods
.method calcGCSpeed()I
    .locals 15

    .prologue
    .line 198
    iget v5, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    .line 202
    .local v5, pos:I
    const-wide/16 v7, 0x0

    .line 204
    .local v7, speedGC:D
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/16 v11, 0x9

    if-ge v4, v11, :cond_0

    .line 205
    const/4 v11, 0x1

    sub-int v11, v5, v11

    if-gez v11, :cond_3

    const/16 v11, 0x9

    move v6, v11

    .line 206
    .local v6, prevpos:I
    :goto_1
    iget-object v11, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    iget v12, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v11, v11, v12

    iget-object v13, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    aget-wide v13, v13, v6

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x7530

    cmp-long v11, v11, v13

    if-ltz v11, :cond_4

    .line 213
    .end local v6           #prevpos:I
    :cond_0
    iget v11, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    if-ne v11, v5, :cond_1

    .line 214
    const/4 v11, 0x1

    sub-int v11, v5, v11

    if-gez v11, :cond_5

    const/16 v11, 0x9

    move v5, v11

    .line 217
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    iget v12, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v11, v11, v12

    iget-object v13, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    iget v14, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v13, v13, v14

    sub-long v0, v11, v13

    .line 218
    .local v0, aggressiveGC:J
    iget-object v11, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    aget-wide v11, v11, v5

    iget-object v13, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    aget-wide v13, v13, v5

    sub-long v2, v11, v13

    .line 219
    .local v2, aggressivePrevGC:J
    iget-object v11, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    iget v12, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v11, v11, v12

    iget-object v13, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    aget-wide v13, v13, v5

    sub-long/2addr v11, v13

    long-to-double v11, v11

    const-wide v13, 0x40ed4c0000000000L

    div-double v9, v11, v13

    .line 221
    .local v9, time:D
    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-eqz v11, :cond_2

    .line 222
    sub-long v11, v0, v2

    long-to-double v11, v11

    div-double v7, v11, v9

    .line 225
    :cond_2
    double-to-int v11, v7

    return v11

    .line 205
    .end local v0           #aggressiveGC:J
    .end local v2           #aggressivePrevGC:J
    .end local v9           #time:D
    :cond_3
    const/4 v11, 0x1

    sub-int v11, v5, v11

    move v6, v11

    goto :goto_1

    .line 209
    .restart local v6       #prevpos:I
    :cond_4
    move v5, v6

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    .end local v6           #prevpos:I
    :cond_5
    const/4 v11, 0x1

    sub-int v11, v5, v11

    move v5, v11

    goto :goto_2
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "pw"

    .prologue
    .line 169
    iget v5, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    add-int/lit8 v3, v5, 0x1

    .line 170
    .local v3, pos:I
    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 171
    .local v1, df:Ljava/text/DateFormat;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v5, 0xa

    if-ge v2, v5, :cond_2

    .line 172
    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    .line 173
    const/4 v3, 0x0

    .line 176
    :cond_0
    iget-object v5, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    aget-wide v5, v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 177
    add-int/lit8 v3, v3, 0x1

    .line 171
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/util/Date;

    iget-object v5, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    aget-wide v5, v5, v3

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 182
    .local v0, date:Ljava/util/Date;
    const-string v5, "%-25s%-22s%-14s%-14s%-14s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, " "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    aget-wide v8, v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    aget-wide v8, v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    aget-wide v8, v8, v3

    iget-object v10, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    aget-wide v10, v10, v3

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, str:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v0           #date:Ljava/util/Date;
    .end local v4           #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 191
    const-string v5, "GCspeed (last 30s): "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->calcGCSpeed()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 193
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 194
    return-void
.end method

.method getLastSampleGC()J
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    iget v1, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getLastSamplePassiveGC()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    iget v1, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method getLastTimeStamp()J
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    iget v1, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method updateGC(J)V
    .locals 2
    .parameter "GC"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mGCs:[J

    iget v1, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aput-wide p1, v0, v1

    .line 150
    return-void
.end method

.method updatePassiveGC(J)V
    .locals 2
    .parameter "passiveGC"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mPassiveGCs:[J

    iget v1, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aput-wide p1, v0, v1

    .line 154
    return-void
.end method

.method updateSampleTime(J)V
    .locals 2
    .parameter "sampleTime"

    .prologue
    .line 141
    iget v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    .line 142
    iget v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mSampleTime:[J

    iget v1, p0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->mLastSample:I

    aput-wide p1, v0, v1

    .line 146
    return-void
.end method
