.class public final Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;
.super Ljava/lang/Thread;
.source "DebugEventIntruder.java"


# static fields
.field private static final EVENT_DATA_FILENAME:Ljava/lang/String; = "DebugEvent.dat"

.field private static EVENT_MAX:I = 0x0

.field private static LOCATION_LISTENER_GPS:I = 0x0

.field private static LOCATION_LISTENER_NET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DebugEventIntruder"


# instance fields
.field private mDebugEventDataFile:Ljava/io/File;

.field private mListener:Landroid/hardware/Camera$ErrorCallback;

.field private mLocationListeners:[Landroid/location/LocationListener;

.field private mLocationProviders:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x10

    sput v0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->EVENT_MAX:I

    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->LOCATION_LISTENER_GPS:I

    .line 77
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->LOCATION_LISTENER_NET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    new-array v0, v1, [Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    .line 84
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    .line 87
    return-void
.end method

.method private behaviour(Ljava/io/InputStreamReader;)V
    .locals 11
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 177
    const/4 v1, 0x0

    .line 178
    .local v1, event:I
    const/4 v4, 0x0

    .line 180
    .local v4, provider:I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->getEventData(Ljava/io/InputStreamReader;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 184
    sget v8, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->EVENT_MAX:I

    div-int v4, v1, v8

    .line 185
    sget v8, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->EVENT_MAX:I

    rem-int/2addr v1, v8

    .line 188
    :try_start_1
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    aget-object v2, v8, v4

    .line 189
    .local v2, listener:Landroid/location/LocationListener;
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    aget-object v5, v8, v4

    .line 190
    .local v5, providerName:Ljava/lang/String;
    if-ne v1, v9, :cond_1

    .line 191
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-interface {v2, v5, v8, v9}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    .end local v2           #listener:Landroid/location/LocationListener;
    .end local v5           #providerName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    throw v0

    .line 192
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #listener:Landroid/location/LocationListener;
    .restart local v5       #providerName:Ljava/lang/String;
    :cond_1
    if-ne v1, v10, :cond_2

    .line 193
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v2, v5, v8, v9}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 243
    .end local v2           #listener:Landroid/location/LocationListener;
    .end local v5           #providerName:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 195
    .restart local v2       #listener:Landroid/location/LocationListener;
    .restart local v5       #providerName:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x3

    if-ne v1, v8, :cond_3

    .line 196
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v2, v5, v8, v9}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 197
    :cond_3
    const/4 v8, 0x4

    if-ne v1, v8, :cond_4

    .line 198
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, location:Landroid/location/Location;
    const-wide v8, 0x405e800000000000L

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 200
    const-wide v8, 0x4046800000000000L

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 201
    invoke-interface {v2, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 202
    .end local v3           #location:Landroid/location/Location;
    :cond_4
    const/4 v8, 0x5

    if-ne v1, v8, :cond_5

    .line 203
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local v3       #location:Landroid/location/Location;
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 205
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 206
    invoke-interface {v2, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 207
    .end local v3           #location:Landroid/location/Location;
    :cond_5
    const/4 v8, 0x6

    if-ne v1, v8, :cond_a

    .line 208
    new-instance v3, Landroid/location/Location;

    invoke-direct {v3, v5}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 212
    .restart local v3       #location:Landroid/location/Location;
    :try_start_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;

    move-result-object v7

    .line 213
    .local v7, value:Ljava/lang/Double;
    if-nez v7, :cond_6

    .line 214
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 218
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;

    move-result-object v7

    .line 219
    if-nez v7, :cond_7

    .line 220
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 224
    :goto_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;

    move-result-object v7

    .line 225
    if-nez v7, :cond_8

    .line 229
    :goto_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->getExtraDataLong(Ljava/io/InputStreamReader;)Ljava/lang/Long;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 230
    .local v6, time:Ljava/lang/Long;
    if-nez v6, :cond_9

    .line 237
    :goto_4
    :try_start_4
    invoke-interface {v2, v3}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 216
    .end local v6           #time:Ljava/lang/Long;
    :cond_6
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLatitude(D)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 234
    .end local v7           #value:Ljava/lang/Double;
    :catch_2
    move-exception v0

    .line 235
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 222
    .end local v0           #e:Ljava/io/IOException;
    .restart local v7       #value:Ljava/lang/Double;
    :cond_7
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_2

    .line 227
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_3

    .line 232
    .restart local v6       #time:Ljava/lang/Long;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Landroid/location/Location;->setTime(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 238
    .end local v3           #location:Landroid/location/Location;
    .end local v6           #time:Ljava/lang/Long;
    .end local v7           #value:Ljava/lang/Double;
    :cond_a
    if-nez v1, :cond_0

    .line 239
    :try_start_8
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mListener:Landroid/hardware/Camera$ErrorCallback;

    if-eqz v8, :cond_0

    .line 240
    iget-object v8, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mListener:Landroid/hardware/Camera$ErrorCallback;

    const/16 v9, 0x64

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0
.end method

.method private checkFile()V
    .locals 9

    .prologue
    .line 116
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 119
    .local v4, filelist:[Ljava/io/File;
    if-nez v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .line 123
    .local v3, fileInList:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DebugEvent.dat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, e:Ljava/io/IOException;
    const-string v7, "DebugEventIntruder"

    const-string v8, "IO Exception occurs"

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 133
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileInList:Ljava/io/File;
    :cond_3
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    if-nez v7, :cond_0

    goto :goto_0
.end method

.method private getEventData(Ljava/io/InputStreamReader;)I
    .locals 7
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v3, 0x0

    .line 303
    .local v3, ev:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 307
    .local v1, character:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    int-to-char v5, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 315
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, line:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 322
    :goto_1
    return v3

    .line 311
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 319
    .restart local v4       #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 320
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getExtraDataDouble(Ljava/io/InputStreamReader;)Ljava/lang/Double;
    .locals 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 252
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 255
    .local v1, character:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    int-to-char v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, line:Ljava/lang/String;
    const/4 v3, 0x0

    .line 267
    .local v3, value:Ljava/lang/Double;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 271
    :goto_1
    return-object v3

    .line 259
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Double;
    :cond_1
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 268
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Double;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private getExtraDataLong(Ljava/io/InputStreamReader;)Ljava/lang/Long;
    .locals 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->read()I

    move-result v1

    .line 281
    .local v1, character:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    int-to-char v4, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, line:Ljava/lang/String;
    const/4 v3, 0x0

    .line 293
    .local v3, value:Ljava/lang/Long;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 297
    :goto_1
    return-object v3

    .line 285
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Long;
    :cond_1
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 294
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #value:Ljava/lang/Long;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private removeEvent()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 328
    .local v0, b:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    .line 329
    if-nez v0, :cond_0

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    .line 146
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 149
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->checkFile()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, reader:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 157
    .end local v0           #reader:Ljava/io/InputStreamReader;
    .local v1, reader:Ljava/io/InputStreamReader;
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->behaviour(Ljava/io/InputStreamReader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 162
    if-eqz v1, :cond_2

    .line 164
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 168
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->removeEvent()V

    move-object v0, v1

    .line 169
    .end local v1           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #reader:Ljava/io/InputStreamReader;
    goto :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 162
    :goto_3
    if-eqz v0, :cond_3

    .line 164
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 168
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->removeEvent()V

    goto :goto_0

    .line 159
    :catch_1
    move-exception v2

    .line 162
    :goto_5
    if-eqz v0, :cond_4

    .line 164
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 168
    :cond_4
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->removeEvent()V

    goto :goto_0

    .line 160
    :catch_2
    move-exception v2

    .line 162
    :goto_7
    if-eqz v0, :cond_5

    .line 164
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 168
    :cond_5
    :goto_8
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->removeEvent()V

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v0, :cond_6

    .line 164
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 168
    :cond_6
    :goto_a
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->removeEvent()V

    throw v2

    .line 147
    .end local v0           #reader:Ljava/io/InputStreamReader;
    :catch_3
    move-exception v2

    goto :goto_1

    .line 165
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v1           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #reader:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v2

    goto :goto_4

    :catch_6
    move-exception v2

    goto :goto_6

    :catch_7
    move-exception v2

    goto :goto_8

    :catch_8
    move-exception v3

    goto :goto_a

    .line 173
    .end local v0           #reader:Ljava/io/InputStreamReader;
    :cond_7
    return-void

    .line 162
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #reader:Ljava/io/InputStreamReader;
    goto :goto_9

    .line 160
    .end local v0           #reader:Ljava/io/InputStreamReader;
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #reader:Ljava/io/InputStreamReader;
    goto :goto_7

    .line 159
    .end local v0           #reader:Ljava/io/InputStreamReader;
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #reader:Ljava/io/InputStreamReader;
    goto :goto_5

    .line 158
    .end local v0           #reader:Ljava/io/InputStreamReader;
    .restart local v1       #reader:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #reader:Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method public setListener(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mListener:Landroid/hardware/Camera$ErrorCallback;

    .line 91
    return-void
.end method

.method public setLocationListenerGps(Landroid/location/LocationListener;)V
    .locals 3
    .parameter "locationListener"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    sget v1, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->LOCATION_LISTENER_GPS:I

    aput-object p1, v0, v1

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    sget v1, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->LOCATION_LISTENER_GPS:I

    const-string v2, "gps"

    aput-object v2, v0, v1

    .line 97
    return-void
.end method

.method public setLocationListenerNet(Landroid/location/LocationListener;)V
    .locals 3
    .parameter "locationListener"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationListeners:[Landroid/location/LocationListener;

    sget v1, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->LOCATION_LISTENER_NET:I

    aput-object p1, v0, v1

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mLocationProviders:[Ljava/lang/String;

    sget v1, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->LOCATION_LISTENER_NET:I

    const-string v2, "network"

    aput-object v2, v0, v1

    .line 102
    return-void
.end method

.method public startDebug()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->mDebugEventDataFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/util/DebugEventIntruder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method
