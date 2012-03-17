.class public Lcom/sonyericsson/android/camera3d/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static mIncrementalId:Lcom/sonyericsson/android/camera3d/util/IncrementalId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera3d/util/IncrementalId;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera3d/CameraApplication;->mIncrementalId:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public getIncrementalId()Lcom/sonyericsson/android/camera3d/util/IncrementalId;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera3d/CameraApplication;->mIncrementalId:Lcom/sonyericsson/android/camera3d/util/IncrementalId;

    return-object v0
.end method
