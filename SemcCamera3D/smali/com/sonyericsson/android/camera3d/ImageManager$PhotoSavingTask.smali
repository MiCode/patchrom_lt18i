.class Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;
.super Landroid/os/AsyncTask;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoSavingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final POLLING_WAIT:J = 0x32L


# instance fields
.field final mRequest:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ImageManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;)V
    .locals 0
    .parameter
    .parameter "request"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 320
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;

    .line 321
    return-void
.end method

.method private save(Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;)Z
    .locals 14
    .parameter "request"

    .prologue
    .line 376
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget v4, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mOrientation:I

    .line 377
    .local v4, orientation:I
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-wide v5, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mDate:J

    .line 378
    .local v5, dateTaken:J
    iget-object v0, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-object v3, v0, Lcom/sonyericsson/android/camera3d/TakenStatus;->mLocation:Landroid/location/Location;

    .line 380
    .local v3, loc:Landroid/location/Location;
    const/4 v1, 0x0

    .line 381
    .local v1, storePath:Ljava/lang/String;
    const/4 v11, 0x0

    .line 382
    .local v11, uri:Landroid/net/Uri;
    const/4 v9, -0x1

    .line 385
    .local v9, result:I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->waitForStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v0, v0, Lcom/sonyericsson/android/camera3d/ImageManager;->mPathBuilder:Lcom/sonyericsson/android/camera3d/DcfPathBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera3d/DcfPathBuilder;->assignImageFilePath(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 393
    :goto_0
    if-eqz v1, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".JPG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v2, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mImage:[B

    invoke-virtual {v0, v2, v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->createStorer([BLjava/lang/String;)Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;

    move-result-object v10

    .line 398
    .local v10, storer:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;
    const/4 v7, 0x0

    .line 399
    .local v7, dummyException:Ljava/io/IOException;
    invoke-virtual {v10, v7}, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    const-string v2, ""

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/android/camera3d/ImageManager;->insertPictureContentProvider(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;IJ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 403
    if-eqz v11, :cond_1

    const/4 v9, 0x0

    .line 414
    .end local v7           #dummyException:Ljava/io/IOException;
    .end local v10           #storer:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;
    :cond_0
    :goto_1
    if-nez v9, :cond_2

    .line 416
    const/4 v9, 0x0

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v2, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v0, v2, v9, v1, v11}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 418
    const/4 v0, 0x1

    .line 422
    :goto_2
    return v0

    .line 403
    .restart local v7       #dummyException:Ljava/io/IOException;
    .restart local v10       #storer:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    .line 404
    :catch_0
    move-exception v8

    .line 405
    .local v8, ex:Landroid/database/sqlite/SQLiteFullException;
    const/4 v11, 0x0

    .line 406
    const/4 v9, -0x2

    goto :goto_1

    .line 421
    .end local v7           #dummyException:Ljava/io/IOException;
    .end local v8           #ex:Landroid/database/sqlite/SQLiteFullException;
    .end local v10           #storer:Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v2, p1, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;->mStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    const/4 v12, 0x0

    sget-object v13, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->notifyStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
    invoke-static {v0, v2, v9, v12, v13}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    .line 422
    const/4 v0, 0x0

    goto :goto_2

    .line 388
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->save(Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingRequest;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera3d/ImageManager;->popPhotoSavingTask(Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;)V

    .line 332
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 317
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 326
    return-void
.end method

.method public waitForStorage()Z
    .locals 3

    .prologue
    .line 343
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera3d/ImageManager;->checkStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const/4 v1, 0x1

    .line 351
    :goto_1
    return v1

    .line 348
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    goto :goto_1
.end method
