.class Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageToFile"
.end annotation


# instance fields
.field private mJpegData:[B

.field mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ImageManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;[BLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "jpegData"
    .parameter "path"

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1512
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    .line 1518
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    .line 1519
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mPath:Ljava/lang/String;

    .line 1520
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public storeData(Ljava/lang/Exception;)Z
    .locals 9
    .parameter "dummyException"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1531
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v0, delegate:Ljava/io/FileOutputStream;
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1533
    :try_start_1
    new-instance v4, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-direct {v4, v0}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    .line 1534
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1535
    if-eqz p1, :cond_2

    .line 1536
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1543
    .end local v0           #delegate:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1544
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail file not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$600(Lcom/sonyericsson/android/camera3d/ImageManager;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v4, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$1;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1581
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    if-eqz v2, :cond_0

    .line 1583
    :try_start_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->flush()V

    .line 1584
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1592
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    move v2, v3

    :goto_1
    return v2

    .line 1534
    .restart local v0       #delegate:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1555
    .end local v0           #delegate:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1556
    .local v1, ex:Ljava/io/IOException;
    :try_start_7
    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store fail I/O Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$600(Lcom/sonyericsson/android/camera3d/ImageManager;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v4, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$2;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1581
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    if-eqz v2, :cond_1

    .line 1583
    :try_start_8
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->flush()V

    .line 1584
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1592
    :cond_1
    :goto_2
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    move v2, v3

    goto :goto_1

    .line 1538
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #delegate:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_9
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;ZLjava/lang/String;)V

    .line 1540
    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    array-length v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->write([BII)V

    .line 1541
    sget-object v4, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1581
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    if-eqz v3, :cond_3

    .line 1583
    :try_start_a
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->flush()V

    .line 1584
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1592
    :cond_3
    :goto_3
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    goto :goto_1

    .line 1585
    :catch_2
    move-exception v1

    .line 1587
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v3, "ImageManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    goto :goto_3

    .line 1585
    .end local v0           #delegate:Ljava/io/FileOutputStream;
    .local v1, ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 1587
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    goto/16 :goto_0

    .line 1585
    :catch_4
    move-exception v1

    .line 1587
    const-string v2, "ImageManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    goto :goto_2

    .line 1568
    .end local v1           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 1569
    .local v1, ex:Ljava/lang/Exception;
    :try_start_b
    const-string v2, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occurred other exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$600(Lcom/sonyericsson/android/camera3d/ImageManager;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v4, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile$3;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1581
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    if-eqz v2, :cond_4

    .line 1583
    :try_start_c
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->flush()V

    .line 1584
    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1592
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    :goto_4
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    move v2, v3

    goto/16 :goto_1

    .line 1585
    .restart local v1       #ex:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 1587
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "ImageManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v2, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    goto :goto_4

    .line 1581
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    if-eqz v3, :cond_5

    .line 1583
    :try_start_d
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->flush()V

    .line 1584
    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1592
    :cond_5
    :goto_5
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mJpegData:[B

    throw v2

    .line 1585
    :catch_7
    move-exception v1

    .line 1587
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v3, "ImageManager"

    const-string v4, "IOException occured when closing."

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iput-object v8, p0, Lcom/sonyericsson/android/camera3d/ImageManager$ImageToFile;->mOutputStream:Lcom/sonyericsson/android/camera3d/util/ThreadSafeOutputStream;

    goto :goto_5
.end method
