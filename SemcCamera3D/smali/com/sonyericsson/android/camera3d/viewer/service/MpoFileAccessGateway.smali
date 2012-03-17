.class public Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;
.super Ljava/lang/Object;
.source "MpoFileAccessGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$1;,
        Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpoFileAccessGateway"

.field private static final mCriticalSection:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;->mCriticalSection:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway;->mCriticalSection:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public open(Ljava/lang/String;)Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;
    .locals 2
    .parameter "filename"

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera3d/viewer/service/MpoFileAccessGateway$MpoFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
