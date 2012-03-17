.class public final enum Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
.super Ljava/lang/Enum;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoringState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

.field public static final enum Doing:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

.field public static final enum Done:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

.field public static final enum Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    const-string v1, "Doing"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Doing:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    const-string v1, "Done"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Done:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    new-instance v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    .line 411
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Doing:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Done:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->Idle:Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    .locals 1
    .parameter "name"

    .prologue
    .line 411
    const-class v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/photostack/ThumbnailCache$StoringState;

    return-object v0
.end method
