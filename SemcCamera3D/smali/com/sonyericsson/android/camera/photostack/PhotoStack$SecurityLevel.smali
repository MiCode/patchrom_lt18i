.class public final enum Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;
.super Ljava/lang/Enum;
.source "PhotoStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

.field public static final enum NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->NORMAL:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    .line 127
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    const-string v1, "NEWLY_ADDED_CONTENT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->NORMAL:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 120
    const-class v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$SecurityLevel;

    return-object v0
.end method
