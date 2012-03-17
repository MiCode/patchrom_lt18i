.class public final Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;
.super Ljava/lang/Object;
.source "ApplicationLauncher.java"


# static fields
.field public static final APP_COOPERATE_CROP_4CONTACTS:I = 0x1

.field public static final APP_COOPERATE_CROP_4WALLPAPER:I = 0x2

.field public static final APP_COOPERATE_CROP_IMAGE_CAPTURE:I = 0x7

.field public static final APP_COOPERATE_LOCATION_SOURCE_SETTINGS:I = 0x6

.field public static final APP_COOPERATE_NON:I = 0x0

.field public static final APP_COOPERATE_RECOG_EDIT:I = 0x5

.field public static final APP_COOPERATE_SET_CONTACTS:I = 0x4

.field private static final CLASS_NAME_GALLERY:Ljava/lang/String; = "com.sonyericsson.gallery.Gallery"

.field private static final CLASS_NAME_MAIN_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.CameraActivity"

.field private static final MIME_TYPE_STRING:Ljava/lang/String; = "mime_type"

.field private static final PACKAGE_NAME_3DPLAYER:Ljava/lang/String; = "com.sonyericsson.android.camera3d"

.field private static final PACKAGE_NAME_GALLERY:Ljava/lang/String; = "com.sonyericsson.gallery"

.field private static final TAG:Ljava/lang/String; = "ApplicationLauncher"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static launch(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 367
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "ApplicationLauncher"

    const-string v2, "Failed to launch"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launch3dPlayer(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 335
    const-string v2, "image/mpo"

    .line 336
    .local v2, mime:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sonyericsson.android.camera3d"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Failed to launch View to playback movie on Recent Shot"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchCameraRoll(Landroid/app/Activity;ZLandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "isCamera"
    .parameter "uri"

    .prologue
    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.android.mediascape.Action.View"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v2, "com.sonyericsson.android.mediascape.category.SubCategory"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    if-eqz p1, :cond_0

    .line 260
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_1
    return-void

    .line 262
    :cond_0
    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ApplicationLauncher"

    const-string v3, "Launch Camera Roll failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static launchGallery(Landroid/app/Activity;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sonyericsson.gallery"

    const-string v3, "com.sonyericsson.gallery.Gallery"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 362
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launch(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method public static launchGallery(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 349
    const-string v1, "image/jpg"

    .line 350
    .local v1, mime:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launch(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method public static launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "extraKey"
    .parameter "extraValue"

    .prologue
    .line 427
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera3d/util/ApplicationLauncher;->launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    return-void
.end method

.method public static launchMainCamera(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "extraKey"
    .parameter "extraValue"
    .parameter "facing"

    .prologue
    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v2, "com.sonyericsson.android.camera"

    const-string v3, "com.sonyericsson.android.camera.CameraActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v2, "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    const-string v2, "facing"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-void

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ApplicationLauncher"

    const-string v3, "launchMainCamera failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchMediaScapePlayBack(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v6, 0x1

    .line 221
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->LAUNCH_MEDIASCAPE_PLAYBACK_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v3, v6}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 226
    const-string v2, "image/jpeg"

    .line 231
    .local v2, mime:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.android.semcSigCommon.Action.View"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "EXTRA_WHERE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    sget-object v3, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->LAUNCH_MEDIASCAPE_PLAYBACK_END:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v3, v6}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 242
    return-void

    .line 228
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mime:Ljava/lang/String;
    :cond_0
    const-string v2, "video/mp4"

    .restart local v2       #mime:Ljava/lang/String;
    goto :goto_0

    .line 238
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Failed to launch MS to playback movie on Recent Shot"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static launchOneShotCropper(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "tempUri"
    .parameter "saveUri"
    .parameter "cropValue"

    .prologue
    const/4 v3, 0x1

    .line 105
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v2, newExtras:Landroid/os/Bundle;
    const-string v4, "circle"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const-string v4, "circleCrop"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    if-eqz p2, :cond_1

    .line 110
    const-string v4, "output"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, cropIntent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    const/4 v4, 0x7

    :try_start_0
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    return v3

    .line 112
    .end local v0           #cropIntent:Landroid/content/Intent;
    :cond_1
    const-string v4, "return-data"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 122
    .restart local v0       #cropIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Setting to the contact failed."

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static launchPlayBack(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 304
    .local v0, check:Z
    if-eqz v0, :cond_0

    const-string v3, "image/jpeg"

    .line 307
    .local v3, mime:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string v4, "android.intent.extra.finishOnCompletion"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_1
    return-void

    .line 304
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mime:Ljava/lang/String;
    :cond_0
    const-string v3, "video/mp4"

    goto :goto_0

    .line 313
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mime:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ApplicationLauncher"

    const-string v5, "Failed to launch View to playback movie on Recent Shot"

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static launchSetWallPaper(Landroid/app/Activity;Landroid/net/Uri;I)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 162
    const-string v4, "image/jpeg"

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    .line 164
    .local v3, width:I
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v1

    .line 165
    .local v1, height:I
    const-string v4, "aspectX"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v4, "aspectY"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v4, "scale"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    const-string v4, "noFaceDetection"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    :try_start_0
    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ApplicationLauncher"

    const-string v5, "Launch ACTION_SET_WALLPAPER failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchSettings(Landroid/app/Activity;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 414
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const/4 v2, 0x6

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ApplicationLauncher"

    const-string v3, "launchSettings: failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchShareMethodChooser(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p1, v3, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 194
    const-string v2, "image/*"

    .line 199
    .local v2, mime:Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.android.semcSigCommon.Action.Share"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v3, "mime_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Failed to launch sharing method chooser"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mime:Ljava/lang/String;
    :cond_2
    const-string v2, "video/*"

    .restart local v2       #mime:Ljava/lang/String;
    goto :goto_1
.end method

.method public static launchVideoCamera(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 451
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sonyericsson.android.camera"

    const-string v3, "com.sonyericsson.android.camera.CameraActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v2, "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "ApplicationLauncher"

    const-string v3, "launchVideoCamera failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchVideoEditor(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p1, v3, :cond_0

    .line 388
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    const-string v2, "video/*"

    .line 396
    .local v2, mime:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.videoedit.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v3, "video/*"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v3, "com.sonyericsson.videoedit.VIDEO_EDIT_JOB_ID"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Failed to launch sharing method chooser"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static launchView(Landroid/app/Activity;ZLandroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "isPhoto"
    .parameter "uri"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    const-string v2, "image/jpeg"

    .line 323
    .local v2, mime:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    return-void

    .line 320
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mime:Ljava/lang/String;
    :cond_0
    const-string v2, "video/mp4"

    goto :goto_0

    .line 328
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #mime:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 329
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Failed to launch View to playback movie on Recent Shot"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setContactPhoto(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "context"
    .parameter "bitmap"

    .prologue
    .line 137
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "photo_bitmap"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 141
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ApplicationLauncher"

    const-string v4, "Setting to the contact failed."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
