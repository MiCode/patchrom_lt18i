.class Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;
.super Landroid/os/Handler;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/ImageManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera3d/ImageManager;Lcom/sonyericsson/android/camera3d/ImageManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1221
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;-><init>(Lcom/sonyericsson/android/camera3d/ImageManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1226
    sget-object v7, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->NOTIFY_STORE_COMPLETE:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v7, v8}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1227
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1229
    :pswitch_0
    sget-object v7, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->MSG_ON_STORE_CALLBACK_START:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v7, v9}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    .line 1231
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .local v4, result:[Ljava/lang/Object;
    move-object v7, v4

    .line 1232
    check-cast v7, [Ljava/lang/Object;

    aget-object v7, v7, v8

    check-cast v7, Ljava/lang/Integer;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1233
    .local v3, res:I
    aget-object v1, v4, v9

    check-cast v1, Ljava/lang/String;

    .local v1, fileName:Ljava/lang/String;
    move-object v7, v4

    .line 1234
    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    check-cast v7, Landroid/net/Uri;

    move-object v6, v7

    check-cast v6, Landroid/net/Uri;

    .line 1235
    .local v6, uri:Landroid/net/Uri;
    check-cast v4, [Ljava/lang/Object;

    .end local v4           #result:[Ljava/lang/Object;
    const/4 v7, 0x3

    aget-object v7, v4, v7

    check-cast v7, Lcom/sonyericsson/android/camera3d/TakenStatus;

    move-object v5, v7

    check-cast v5, Lcom/sonyericsson/android/camera3d/TakenStatus;

    .line 1236
    .local v5, status:Lcom/sonyericsson/android/camera3d/TakenStatus;
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$400(Lcom/sonyericsson/android/camera3d/ImageManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 1237
    .local v0, cb:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    invoke-interface {v0, v5, v3, v1, v6}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;->onStoreComplete(Lcom/sonyericsson/android/camera3d/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 1241
    .end local v0           #cb:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    :cond_1
    sget-object v7, Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;->MSG_ON_STORE_CALLBACK_END:Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;

    invoke-static {v7, v9}, Lcom/sonyericsson/android/camera3d/util/MeasurePerformance2;->measureTime(Lcom/sonyericsson/android/camera3d/CameraConfig$PerformanceIds;Z)V

    goto :goto_0

    .line 1246
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #res:I
    .end local v5           #status:Lcom/sonyericsson/android/camera3d/TakenStatus;
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v7, p0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataHandler;->this$0:Lcom/sonyericsson/android/camera3d/ImageManager;

    #getter for: Lcom/sonyericsson/android/camera3d/ImageManager;->mStoreDataCallbackList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sonyericsson/android/camera3d/ImageManager;->access$400(Lcom/sonyericsson/android/camera3d/ImageManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;

    .line 1247
    .restart local v0       #cb:Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v7, v8}, Lcom/sonyericsson/android/camera3d/ImageManager$StoreDataCallback;->onStoreProgress(II)V

    goto :goto_2

    .line 1227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
