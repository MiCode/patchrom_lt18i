.class Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;
.super Ljava/lang/Object;
.source "CameraConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/CameraConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentExtra"
.end annotation


# static fields
.field public static final ADD_TO_MEDIA_STORE:Ljava/lang/String; = "addToMediaStore"

.field public static final INVALID:J = -0x1L


# instance fields
.field public final mCropValue:Ljava/lang/String;

.field public mIsRequestedToSaveToMediaStoreUri:Z

.field public mSavedUri:Landroid/net/Uri;

.field public final mVideoMaxDurationInMillisecs:J

.field public final mVideoMaxFileSizeInBytes:J

.field public final mVideoQuality:J


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 315
    .local v3, sizeLimitLong:J
    cmp-long v5, v3, v7

    if-nez v5, :cond_0

    .line 317
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 322
    .local v2, sizeLimitInt:I
    int-to-long v5, v2

    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxFileSizeInBytes:J

    .line 328
    .end local v2           #sizeLimitInt:I
    :goto_0
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 333
    .local v1, maxDurationSeconds:I
    int-to-long v5, v1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 334
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxDurationInMillisecs:J

    .line 340
    :goto_1
    const-string v5, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoQuality:J

    .line 344
    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mCropValue:Ljava/lang/String;

    .line 346
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->setUriFromIntent(Landroid/content/Intent;)V

    .line 381
    .end local v1           #maxDurationSeconds:I
    .end local v3           #sizeLimitLong:J
    :goto_2
    return-void

    .line 324
    .restart local v3       #sizeLimitLong:J
    :cond_0
    iput-wide v3, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxFileSizeInBytes:J

    goto :goto_0

    .line 336
    .restart local v1       #maxDurationSeconds:I
    :cond_1
    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxDurationInMillisecs:J

    goto :goto_1

    .line 347
    .end local v1           #maxDurationSeconds:I
    .end local v3           #sizeLimitLong:J
    :cond_2
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 349
    const-string v5, "crop"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    const-string v5, "crop"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mCropValue:Ljava/lang/String;

    .line 356
    :goto_3
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxFileSizeInBytes:J

    .line 357
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxDurationInMillisecs:J

    .line 358
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoQuality:J

    .line 360
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->setUriFromIntent(Landroid/content/Intent;)V

    goto :goto_2

    .line 352
    :cond_3
    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mCropValue:Ljava/lang/String;

    goto :goto_3

    .line 362
    :cond_4
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxFileSizeInBytes:J

    .line 363
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoMaxDurationInMillisecs:J

    .line 364
    iput-wide v7, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mVideoQuality:J

    .line 365
    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mCropValue:Ljava/lang/String;

    .line 366
    iput-object v9, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mSavedUri:Landroid/net/Uri;

    .line 367
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mIsRequestedToSaveToMediaStoreUri:Z

    goto :goto_2
.end method

.method private setUriFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 389
    .local v0, extra:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mSavedUri:Landroid/net/Uri;

    .line 391
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mIsRequestedToSaveToMediaStoreUri:Z

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mSavedUri:Landroid/net/Uri;

    .line 394
    const-string v1, "addToMediaStore"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera3d/CameraConfigManager$IntentExtra;->mIsRequestedToSaveToMediaStoreUri:Z

    goto :goto_0
.end method
