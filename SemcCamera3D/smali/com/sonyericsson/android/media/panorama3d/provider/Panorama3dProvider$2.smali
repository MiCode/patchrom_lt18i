.class Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;
.super Landroid/os/Handler;
.source "Panorama3dProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 197
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$200(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Ljava/util/PriorityQueue;

    move-result-object v1

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$200(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    #setter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v2, v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$302(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    .line 199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 216
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    iput-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 220
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mPicturesThumbQueue:Ljava/util/PriorityQueue;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$200(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Ljava/util/PriorityQueue;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    .line 226
    :try_start_5
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2

    .line 228
    :catch_0
    move-exception v0

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_7
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    iput-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 232
    :catch_1
    move-exception v0

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_8
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    iput-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 239
    :catch_2
    move-exception v0

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_9
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    iput-object v2, v0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 253
    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v1

    monitor-enter v1

    .line 254
    :try_start_a
    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;->DONE:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    iput-object v3, v2, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;->mState:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest$State;

    .line 255
    iget-object v2, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #getter for: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->mCurrentThumbRequest:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$300(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dThumbRequest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v0

    .line 259
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 266
    :try_start_c
    iget-object v0, p0, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider$2;->this$0:Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;

    #calls: Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->cleanOldTempFiles()V
    invoke-static {v0}, Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;->access$400(Lcom/sonyericsson/android/media/panorama3d/provider/Panorama3dProvider;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_0

    .line 267
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method
