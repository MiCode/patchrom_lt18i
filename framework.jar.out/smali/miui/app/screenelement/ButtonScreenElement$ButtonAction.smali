.class final enum Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;
.super Ljava/lang/Enum;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ButtonScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ButtonAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

.field public static final enum Double:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

.field public static final enum Down:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

.field public static final enum Invalid:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

.field public static final enum Long:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

.field public static final enum Up:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    const-string v1, "Down"

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    new-instance v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    const-string v1, "Up"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    new-instance v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    const-string v1, "Double"

    invoke-direct {v0, v1, v4}, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    new-instance v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    const-string v1, "Long"

    invoke-direct {v0, v1, v5}, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Long:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    new-instance v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v6}, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Invalid:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    sget-object v1, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Down:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Up:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Double:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Long:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->Invalid:Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    aput-object v1, v0, v6

    sput-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->$VALUES:[Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 98
    const-class v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    return-object p0
.end method

.method public static values()[Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->$VALUES:[Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    invoke-virtual {v0}, [Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/ButtonScreenElement$ButtonAction;

    return-object v0
.end method
