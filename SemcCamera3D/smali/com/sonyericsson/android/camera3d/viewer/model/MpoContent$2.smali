.class Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;
.super Ljava/lang/Object;
.source "MpoContent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->startSearchRelativeMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 577
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mProviderAccess:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
    invoke-static {v1}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$200(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->getRelativeMedia(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v0

    .line 578
    .local v0, relative:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    if-nez v0, :cond_0

    .line 579
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 582
    :goto_0
    return-object v1

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;->this$0:Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;

    #getter for: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->mInfo:Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;
    invoke-static {v2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$100(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;

    move-result-object v2

    #calls: Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->onCompleteSearchRelativeMedia(Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;->access$300(Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfo;Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;)V

    .line 582
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoContent$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
