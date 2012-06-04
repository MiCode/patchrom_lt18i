.class public Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;
.super Ljava/lang/Object;
.source "ShutterToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;
    }
.end annotation


# static fields
.field public static final MAX_VOLUME:F = 1.0f

.field public static final MSG_LIGHT_OFF:I = 0x1

.field public static final SOUND_AF_SUCCESS:I = 0x0

.field public static final SOUND_ERROR:I = -0x1

.field public static final SOUND_NUM:I = 0x5

.field public static final SOUND_SELFTIMER_10SEC:I = 0x2

.field public static final SOUND_SELFTIMER_2SEC:I = 0x1

.field public static final SOUND_SHUTTER:I = 0x3

.field private static final SOUND_STREAM:I = 0x7

.field public static final SOUND_VIDEO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShutterToneGenerator"


# instance fields
.field private mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

.field private mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayMode:I

.field private mSoundIdList:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_RESOURCES:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundIdList:[I

    .line 117
    new-instance v0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;-><init>(Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;)Lcom/sonyericsson/android/camera3d/CameraDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    return-object v0
.end method

.method public static test(II)V
    .locals 4
    .parameter "type"
    .parameter "sound"

    .prologue
    .line 170
    const/4 p0, 0x3

    .line 173
    if-ltz p1, :cond_0

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 179
    .local v1, player:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 185
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 186
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 187
    new-instance v2, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$1;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 194
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutterToneGenerator"

    const-string v3, "Play sound failed"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateVideoSound(Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 6
    .parameter "cam"

    .prologue
    const/4 v5, 0x1

    .line 313
    iget v2, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    if-ltz v2, :cond_1

    .line 314
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 315
    .local v1, soundFiles:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    iget v4, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {p1, v5, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setShutterSound(ILjava/lang/String;)V

    .line 323
    .end local v0           #i:I
    .end local v1           #soundFiles:[Ljava/lang/String;
    :goto_1
    return-void

    .line 321
    :cond_1
    const-string v2, "/system/media/audio/camera/sound0/no_sound.m4a"

    invoke-virtual {p1, v5, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setShutterSound(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public blink()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 295
    return-void
.end method

.method public cancelPlayAndBlink(I)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;->removeMessages(I)V

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 310
    :cond_0
    return-void
.end method

.method public getSoundFile(I)Ljava/lang/String;
    .locals 4
    .parameter "sound"

    .prologue
    .line 245
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    .line 246
    .local v0, index:I
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, soundFile:Ljava/lang/String;
    return-object v1

    .line 250
    .end local v1           #soundFile:Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 251
    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public play(I)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->playInternal(I)V

    .line 158
    return-void
.end method

.method protected playInternal(I)V
    .locals 10
    .parameter "sound"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    if-ltz v0, :cond_0

    .line 211
    if-ltz p1, :cond_1

    .line 212
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->getSoundFile(I)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, soundFile:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 241
    .end local v9           #soundFile:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 219
    .restart local v9       #soundFile:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 220
    .local v7, ex:Ljava/io/IOException;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 235
    .end local v7           #ex:Ljava/io/IOException;
    .end local v9           #soundFile:Ljava/lang/String;
    :cond_1
    mul-int/lit8 v0, p1, -0x1

    add-int/lit8 v8, v0, -0x1

    .line 236
    .local v8, index:I
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundIdList:[I

    aget v1, v1, v8

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 222
    .end local v8           #index:I
    .restart local v9       #soundFile:Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 125
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 127
    new-instance v0, Landroid/media/SoundPool;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_RESOURCES:[I

    array-length v1, v1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundIdList:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f06

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 130
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 145
    :cond_1
    return-void
.end method

.method public setCameraDevice(Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    .line 327
    return-void
.end method

.method public setPlayMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->setPlayModeInternal(I)V

    .line 273
    return-void
.end method

.method protected setPlayModeInternal(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 284
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    .line 285
    return-void
.end method

.method public setVideoSound(Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 0
    .parameter "cam"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->updateVideoSound(Lcom/sonyericsson/android/camera3d/CameraDevice;)V

    .line 277
    return-void
.end method
