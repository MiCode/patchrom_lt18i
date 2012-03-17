.class public final enum Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;
.super Ljava/lang/Enum;
.source "PhotoStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/photostack/PhotoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

.field public static final enum CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

.field public static final enum CLOSING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

.field public static final enum IDLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

.field public static final enum OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

.field public static final enum OPENING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->IDLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 64
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 65
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 67
    new-instance v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPENING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->IDLE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSE:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPEN:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->CLOSING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->OPENING:Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    const-class v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->$VALUES:[Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/photostack/PhotoStack$State;

    return-object v0
.end method
