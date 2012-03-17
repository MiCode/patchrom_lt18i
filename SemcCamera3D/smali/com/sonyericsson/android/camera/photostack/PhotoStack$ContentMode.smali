.class public final enum Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
.super Ljava/lang/Enum;
.source "PhotoStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

.field public static final enum MULTI_ANGLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

.field public static final enum PANORAMA_3D:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

.field public static final enum PHOTO_VIDEO:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;


# instance fields
.field private final mIsSeparated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    const-string v1, "PHOTO_VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PHOTO_VIDEO:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    const-string v1, "PANORAMA_3D"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PANORAMA_3D:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    const-string v1, "MULTI_ANGLE"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->MULTI_ANGLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PHOTO_VIDEO:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->PANORAMA_3D:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->MULTI_ANGLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "separated"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->mIsSeparated:Z

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 95
    const-class v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;

    return-object v0
.end method


# virtual methods
.method public isSeparated()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$ContentMode;->mIsSeparated:Z

    return v0
.end method
