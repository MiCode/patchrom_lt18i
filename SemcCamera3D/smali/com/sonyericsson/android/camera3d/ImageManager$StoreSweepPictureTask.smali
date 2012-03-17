.class Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreSweepPictureTask"
.end annotation


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

.field private mConvertNv12ToNv21:Z

.field private mData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

.field private mIsReleaseRequested:Z

.field private mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

.field private mType:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ImageManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 6
    .parameter
    .parameter "type"
    .parameter "data"
    .parameter "convertNv12ToNv21"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mIsReleaseRequested:Z

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 2391
    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->setParams(I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 2393
    return-void
.end method


# virtual methods
.method public requestRelease(Z)V
    .locals 0
    .parameter "request"

    .prologue
    .line 2405
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mIsReleaseRequested:Z

    .line 2406
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2411
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mIsReleaseRequested:Z

    if-eqz v0, :cond_0

    .line 2446
    :goto_0
    return-void

    .line 2415
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mConvertNv12ToNv21:Z

    if-eqz v0, :cond_1

    .line 2417
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    invoke-static {v0}, Lcom/sonyericsson/android/camera3d/util/Yuv420Conventer;->convertNv12ToNv21([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;)[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 2420
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 2434
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera3d/util/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mIsReleaseRequested:Z

    if-eqz v0, :cond_2

    .line 2439
    invoke-static {}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->getInstance()Lcom/sonyericsson/android/camera3d/YuvOutBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera3d/YuvOutBuffer;->releaseOutBuffers()V

    .line 2440
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mIsReleaseRequested:Z

    .line 2443
    :cond_2
    const/4 v1, -0x1

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->setParams(I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    .line 2444
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #setter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreSweepPictureTask:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$1402(Lcom/sonyericsson/android/camera3d/ImageManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0

    .line 2422
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    aget-object v1, v1, v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPanorama(Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    invoke-static {v0, v1, v4, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$1100(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    goto :goto_1

    .line 2426
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepPanorama3d([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    invoke-static {v0, v1, v4, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$1200(Lcom/sonyericsson/android/camera3d/ImageManager;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    goto :goto_1

    .line 2430
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    iget-object v4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    #calls: Lcom/sonyericsson/android/camera3d/ImageManager;->storeSweepMultiAngle([Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    invoke-static {v0, v1, v4, v5}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$1300(Lcom/sonyericsson/android/camera3d/ImageManager;[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;Lcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V

    goto :goto_1

    .line 2420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setParams(I[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;ZLcom/sonyericsson/android/camera3d/TakenStatus;Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;)V
    .locals 0
    .parameter "type"
    .parameter "data"
    .parameter "convertNv12ToNv21"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2397
    iput p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mType:I

    .line 2398
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mData:[Lcom/sonyericsson/android/camera3d/YuvOutBuffer$YuvOutData;

    .line 2399
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mConvertNv12ToNv21:Z

    .line 2400
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mTakenStatus:Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 2401
    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreSweepPictureTask;->mCallback:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 2402
    return-void
.end method
