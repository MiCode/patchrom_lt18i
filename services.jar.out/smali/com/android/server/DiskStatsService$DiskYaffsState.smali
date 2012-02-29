.class Lcom/android/server/DiskStatsService$DiskYaffsState;
.super Ljava/lang/Object;
.source "DiskStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DiskStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskYaffsState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    }
.end annotation


# static fields
.field private static final LOG_AGGRESSIVE_GC_SPEED:I = 0x2d

.field private static final SAMPLE_HISTORY:I = 0xa

.field private static final mSampleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DiskStatsService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/DiskStatsService$DiskYaffsState;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DiskStatsService$DiskYaffsState;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/server/DiskStatsService$DiskYaffsState;->logStat()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DiskStatsService$DiskYaffsState;Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/DiskStatsService$DiskYaffsState;->dumpYaffsState(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private declared-synchronized dumpYaffsState(Ljava/io/PrintWriter;)V
    .locals 13
    .parameter "pw"

    .prologue
    const-string v9, "IO exception closing /proc/yaffs"

    const-string v9, "DiskStatsService"

    .line 247
    monitor-enter p0

    const/4 v4, 0x0

    .line 248
    .local v4, input:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 250
    .local v0, date:Ljava/util/Date;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 251
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v9, "cat /proc/yaffs"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const/4 v6, 0x0

    .line 255
    .local v6, l:Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/yaffs"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .end local v4           #input:Ljava/io/BufferedReader;
    .local v5, input:Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 258
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 261
    :catch_0
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .line 262
    .end local v5           #input:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v4       #input:Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    const-string v9, "DiskStatsService"

    const-string v10, "File not found /proc/yaffs"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    if-eqz v4, :cond_0

    .line 268
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 274
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 275
    const-string v9, "Garbage collection stat: "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    const-string v9, "----------------------------------------------------------------------"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 278
    sget-object v9, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    .local v1, device:Ljava/lang/String;
    sget-object v9, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;

    .line 280
    .local v7, sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    const-string v9, "%-25s%-22s%-14s%-14s%-14s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    const-string v12, "Sample-time"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "GC"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "pGCs"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "aGCs"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 286
    .local v8, str:Ljava/lang/String;
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v7, p1}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->dump(Ljava/io/PrintWriter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 247
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #device:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #l:Ljava/lang/String;
    .end local v7           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .end local v8           #str:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_4
    monitor-exit p0

    throw v9

    .line 266
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v0       #date:Ljava/util/Date;
    .restart local v5       #input:Ljava/io/BufferedReader;
    .restart local v6       #l:Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 268
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_2
    :goto_5
    move-object v4, v5

    .line 273
    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .line 263
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 264
    .local v2, e:Ljava/io/IOException;
    :goto_6
    :try_start_7
    const-string v9, "DiskStatsService"

    const-string v10, "IO exception reading /proc/yaffs"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 266
    if-eqz v4, :cond_0

    .line 268
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 269
    :catch_2
    move-exception v2

    .line 270
    :try_start_9
    const-string v9, "DiskStatsService"

    const-string v10, "IO exception closing /proc/yaffs"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 266
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_7
    if-eqz v4, :cond_3

    .line 268
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 266
    :cond_3
    :goto_8
    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 289
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    monitor-exit p0

    return-void

    .line 269
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v2

    .line 270
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_c
    const-string v10, "DiskStatsService"

    const-string v11, "IO exception closing /proc/yaffs"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 269
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 270
    .local v2, e:Ljava/io/IOException;
    const-string v9, "DiskStatsService"

    const-string v10, "IO exception closing /proc/yaffs"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 269
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    .line 270
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_d
    const-string v9, "DiskStatsService"

    const-string v10, "IO exception closing /proc/yaffs"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    .line 247
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 266
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    goto :goto_7

    .line 263
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v5       #input:Ljava/io/BufferedReader;
    :catch_6
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    goto :goto_6

    .line 261
    :catch_7
    move-exception v9

    move-object v2, v9

    goto/16 :goto_1
.end method

.method private declared-synchronized logStat()V
    .locals 9

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    .local v0, device:Ljava/lang/String;
    sget-object v4, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;

    .line 234
    .local v2, sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    invoke-virtual {v2}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->calcGCSpeed()I

    move-result v3

    .line 236
    .local v3, speedGC:I
    const/16 v4, 0x2d

    if-lt v3, v4, :cond_0

    .line 237
    const/16 v4, 0xc80

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->getLastSampleGC()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->getLastSamplePassiveGC()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 232
    .end local v0           #device:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .end local v3           #speedGC:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 244
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized update()V
    .locals 18

    .prologue
    .line 77
    monitor-enter p0

    const/4 v3, 0x0

    .line 82
    .local v3, input:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 83
    .local v8, sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 86
    .local v10, sampleTime:J
    const/4 v5, 0x0

    .line 87
    .local v5, l:Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/proc/yaffs"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 89
    .end local v3           #input:Ljava/io/BufferedReader;
    .local v4, input:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 91
    const-string v15, "Device"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 93
    sget-object v15, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;

    move-object v8, v0

    .line 95
    if-nez v8, :cond_1

    .line 96
    new-instance v9, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;

    const/4 v15, 0x0

    invoke-direct {v9, v15}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;-><init>(Lcom/android/server/DiskStatsService$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 97
    .end local v8           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .local v9, sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    :try_start_3
    sget-object v15, Lcom/android/server/DiskStatsService$DiskYaffsState;->mSampleMap:Ljava/util/HashMap;

    invoke-virtual {v15, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v8, v9

    .line 100
    .end local v9           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v8       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    :cond_1
    :try_start_4
    invoke-virtual {v8, v10, v11}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->updateSampleTime(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v15

    move-object v1, v15

    move-object v3, v4

    .line 120
    .end local v4           #input:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :goto_1
    :try_start_5
    const-string v15, "DiskStatsService"

    const-string v16, "File not found /proc/yaffs"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 124
    if-eqz v3, :cond_2

    .line 126
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 132
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    .line 102
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    :cond_3
    if-eqz v8, :cond_4

    :try_start_7
    const-string v15, "garbageCollections"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 104
    const-string v15, " "

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v12, v15, 0x1

    .line 105
    .local v12, start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 106
    .local v2, end:I
    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 107
    .local v13, totalGCs:J
    invoke-virtual {v8, v13, v14}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->updateGC(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 121
    .end local v2           #end:I
    .end local v12           #start:I
    .end local v13           #totalGCs:J
    :catch_1
    move-exception v15

    move-object v1, v15

    move-object v3, v4

    .line 122
    .end local v4           #input:Ljava/io/BufferedReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :goto_3
    :try_start_8
    const-string v15, "DiskStatsService"

    const-string v16, "IO exception reading /proc/yaffs"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 124
    if-eqz v3, :cond_2

    .line 126
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 127
    :catch_2
    move-exception v1

    .line 128
    :try_start_a
    const-string v15, "DiskStatsService"

    const-string v16, "IO exception closing /proc/yaffs"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #l:Ljava/lang/String;
    .end local v10           #sampleTime:J
    :catchall_0
    move-exception v15

    :goto_4
    monitor-exit p0

    throw v15

    .line 109
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v5       #l:Ljava/lang/String;
    .restart local v10       #sampleTime:J
    :cond_4
    if-eqz v8, :cond_0

    :try_start_b
    const-string v15, "passiveGCs"

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 111
    const-string v15, " "

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v12, v15, 0x1

    .line 112
    .restart local v12       #start:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .restart local v2       #end:I
    invoke-virtual {v5, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 114
    .local v6, passiveGCs:J
    invoke-virtual {v8, v6, v7}, Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;->updatePassiveGC(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    .line 124
    .end local v2           #end:I
    .end local v6           #passiveGCs:J
    .end local v12           #start:I
    :catchall_1
    move-exception v15

    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    :goto_5
    if-eqz v3, :cond_5

    .line 126
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 124
    :cond_5
    :goto_6
    :try_start_d
    throw v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    :cond_6
    if-eqz v4, :cond_7

    .line 126
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_7
    :goto_7
    move-object v3, v4

    .line 131
    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto :goto_2

    .line 127
    :catch_3
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_f
    const-string v16, "DiskStatsService"

    const-string v17, "IO exception closing /proc/yaffs"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 127
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v1

    .line 128
    .local v1, e:Ljava/io/IOException;
    const-string v15, "DiskStatsService"

    const-string v16, "IO exception closing /proc/yaffs"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 127
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #input:Ljava/io/BufferedReader;
    .restart local v4       #input:Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_10
    const-string v15, "DiskStatsService"

    const-string v16, "IO exception closing /proc/yaffs"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_7

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v15

    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto :goto_4

    .line 124
    :catchall_3
    move-exception v15

    goto :goto_5

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v8           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v9       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    :catchall_4
    move-exception v15

    move-object v8, v9

    .end local v9           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v8       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto :goto_5

    .line 121
    :catch_6
    move-exception v15

    move-object v1, v15

    goto :goto_3

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v8           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v9       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    :catch_7
    move-exception v15

    move-object v1, v15

    move-object v8, v9

    .end local v9           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v8       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto :goto_3

    .line 119
    :catch_8
    move-exception v15

    move-object v1, v15

    goto/16 :goto_1

    .end local v3           #input:Ljava/io/BufferedReader;
    .end local v8           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v4       #input:Ljava/io/BufferedReader;
    .restart local v9       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    :catch_9
    move-exception v15

    move-object v1, v15

    move-object v8, v9

    .end local v9           #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    .restart local v8       #sampleHist:Lcom/android/server/DiskStatsService$DiskYaffsState$DiskStatHistSample;
    move-object v3, v4

    .end local v4           #input:Ljava/io/BufferedReader;
    .restart local v3       #input:Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method
