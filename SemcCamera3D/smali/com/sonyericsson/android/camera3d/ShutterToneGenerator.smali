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
.field public static final MSG_LIGHT_OFF:I = 0x1

.field public static final SOUND_AF_SUCCESS:I = 0x0

.field public static final SOUND_ERROR:I = -0x1

.field public static final SOUND_NUM:I = 0x5

.field public static final SOUND_SELFTIMER_10SEC:I = 0x2

.field public static final SOUND_SELFTIMER_2SEC:I = 0x1

.field public static final SOUND_SHUTTER:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final SOUND_STREAM:I = 0x0

.field public static final SOUND_VIDEO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShutterToneGenerator"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

.field private mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayMode:I

.field private mSoundIdList:[I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->getAudioStreamType()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    .line 75
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_RESOURCES:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundIdList:[I

    .line 139
    new-instance v0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;-><init>(Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;)Lcom/sonyericsson/android/camera3d/CameraDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    return-object v0
.end method

.method private static getAudioStreamType()I
    .locals 2

    .prologue
    .line 124
    const-string v0, "ro.camera.sound.forced"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x3

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private getCurrentVolumeRate()F
    .locals 6

    .prologue
    .line 354
    sget v3, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 357
    const/high16 v2, 0x3f80

    .line 388
    :goto_0
    return v2

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mAudioManager:Landroid/media/AudioManager;

    sget v4, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 362
    .local v0, currentVolume:I
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mAudioManager:Landroid/media/AudioManager;

    sget v4, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 365
    .local v1, maxVolume:I
    const/4 v2, 0x0

    .line 366
    .local v2, volumeRate:F
    if-lez v0, :cond_2

    if-lez v1, :cond_2

    .line 367
    if-gt v0, v1, :cond_1

    .line 368
    int-to-float v3, v0

    int-to-float v4, v1

    div-float v2, v3, v4

    goto :goto_0

    .line 370
    :cond_1
    const-string v3, "ShutterToneGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentVolumeRate: current > max currentVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "maxVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 376
    :cond_2
    if-ltz v0, :cond_3

    if-gez v1, :cond_4

    .line 377
    :cond_3
    const-string v3, "ShutterToneGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentVolumeRate: volume < 0 currentVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "maxVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static test(II)V
    .locals 4
    .parameter "type"
    .parameter "sound"

    .prologue
    .line 195
    const/4 p0, 0x3

    .line 198
    if-ltz p1, :cond_0

    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 204
    .local v1, player:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    .line 206
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

    .line 209
    sget v2, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 210
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 211
    new-instance v2, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$1;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 218
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
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

    .line 337
    iget v2, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    if-ltz v2, :cond_1

    .line 338
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 339
    .local v1, soundFiles:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 340
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

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {p1, v5, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setShutterSound(ILjava/lang/String;)V

    .line 347
    .end local v0           #i:I
    .end local v1           #soundFiles:[Ljava/lang/String;
    :goto_1
    return-void

    .line 345
    :cond_1
    const-string v2, "/system/media/audio/camera/sound0/no_sound.m4a"

    invoke-virtual {p1, v5, v2}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setShutterSound(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public blink()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 319
    return-void
.end method

.method public cancelPlayAndBlink(I)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/CameraDevice;->setFlashMode(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mLedBlinkerHandler:Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator$LedBlinkerHandler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 334
    :cond_0
    return-void
.end method

.method public getSoundFile(I)Ljava/lang/String;
    .locals 4
    .parameter "sound"

    .prologue
    .line 269
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    .line 270
    .local v0, index:I
    packed-switch p1, :pswitch_data_0

    .line 286
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

    .line 288
    .local v1, soundFile:Ljava/lang/String;
    return-object v1

    .line 274
    .end local v1           #soundFile:Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_PATHS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 275
    goto :goto_0

    .line 270
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
    .line 182
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->playInternal(I)V

    .line 183
    return-void
.end method

.method protected playInternal(I)V
    .locals 10
    .parameter "sound"

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    if-ltz v0, :cond_0

    .line 235
    if-ltz p1, :cond_1

    .line 236
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->getSoundFile(I)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, soundFile:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v1, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 265
    .end local v9           #soundFile:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 242
    .restart local v9       #soundFile:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 243
    .local v7, ex:Ljava/io/IOException;
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 258
    .end local v7           #ex:Ljava/io/IOException;
    .end local v9           #soundFile:Ljava/lang/String;
    :cond_1
    mul-int/lit8 v0, p1, -0x1

    add-int/lit8 v8, v0, -0x1

    .line 259
    .local v8, index:I
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->getCurrentVolumeRate()F

    move-result v2

    .line 261
    .local v2, volumeRate:F
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundIdList:[I

    aget v1, v1, v8

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 245
    .end local v2           #volumeRate:F
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

    .line 147
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 151
    new-instance v0, Landroid/media/SoundPool;

    sget-object v1, Lcom/sonyericsson/android/camera3d/CameraConfig;->SOUND_RESOURCES:[I

    array-length v1, v1

    sget v2, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->SOUND_STREAM:I

    invoke-direct {v0, v1, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundIdList:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f06

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 154
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mAudioManager:Landroid/media/AudioManager;

    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 164
    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 170
    :cond_1
    return-void
.end method

.method public setCameraDevice(Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mCameraDevice:Lcom/sonyericsson/android/camera3d/CameraDevice;

    .line 351
    return-void
.end method

.method public setPlayMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->setPlayModeInternal(I)V

    .line 297
    return-void
.end method

.method protected setPlayModeInternal(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 308
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->mPlayMode:I

    .line 309
    return-void
.end method

.method public setVideoSound(Lcom/sonyericsson/android/camera3d/CameraDevice;)V
    .locals 0
    .parameter "cam"

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ShutterToneGenerator;->updateVideoSound(Lcom/sonyericsson/android/camera3d/CameraDevice;)V

    .line 301
    return-void
.end method
