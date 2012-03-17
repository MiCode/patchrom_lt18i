.class public Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;
.super Ljava/lang/Object;
.source "MpoInfoQuery.java"


# instance fields
.field private final mCurrentContent:Landroid/net/Uri;

.field private final mMpoTyep:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

.field private final mPhotoStackNum:I

.field private final mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)V
    .locals 0
    .parameter "provider"
    .parameter "type"
    .parameter "current"
    .parameter "photoStackNum"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    .line 46
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mMpoTyep:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    .line 47
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mCurrentContent:Landroid/net/Uri;

    .line 48
    iput p4, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mPhotoStackNum:I

    .line 49
    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;
    .locals 2
    .parameter "provider"
    .parameter "type"
    .parameter "photoStackNum"

    .prologue
    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public static create(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;
    .locals 1
    .parameter "provider"
    .parameter "type"
    .parameter "current"
    .parameter "photoStackNum"

    .prologue
    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;-><init>(Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)V

    return-object v0
.end method


# virtual methods
.method public execute()Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mCurrentContent:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mMpoTyep:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->select(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mProvider:Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mMpoTyep:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mCurrentContent:Landroid/net/Uri;

    iget v3, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mPhotoStackNum:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;->selectWithCurrentContent(Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;Landroid/net/Uri;I)Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoRetriever;

    move-result-object v0

    goto :goto_0
.end method

.method public getMpoType()Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/model/MpoInfoQuery;->mMpoTyep:Lcom/sonyericsson/android/camera3d/viewer/Constants$Camera3DMpoType;

    return-object v0
.end method
