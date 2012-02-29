.class final enum Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;
.super Ljava/lang/Enum;
.source "UnlockerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

.field public static final enum Invalid:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

.field public static final enum Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

.field public static final enum Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

.field public static final enum Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    const-string v1, "Pressed"

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    const-string v1, "Reached"

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    new-instance v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v5}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Invalid:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Normal:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Pressed:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Reached:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->Invalid:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->$VALUES:[Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 214
    const-class v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    return-object p0
.end method

.method public static values()[Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->$VALUES:[Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    invoke-virtual {v0}, [Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockerScreenElement$State;

    return-object v0
.end method
