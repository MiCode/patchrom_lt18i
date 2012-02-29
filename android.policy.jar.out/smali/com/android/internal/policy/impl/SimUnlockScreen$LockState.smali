.class final enum Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;
.super Ljava/lang/Enum;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

.field public static final enum STATE_CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

.field public static final enum STATE_ENTER_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

.field public static final enum STATE_ENTER_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

.field public static final enum STATE_ENTER_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    const-string v1, "STATE_ENTER_PIN"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    const-string v1, "STATE_ENTER_PUK"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 114
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    const-string v1, "STATE_ENTER_NEW_PIN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 115
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    const-string v1, "STATE_CONFIRM_NEW_PIN"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_PUK:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_ENTER_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->STATE_CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    const-class v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$LockState;

    return-object v0
.end method
