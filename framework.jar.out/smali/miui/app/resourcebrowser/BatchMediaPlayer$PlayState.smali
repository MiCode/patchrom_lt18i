.class final enum Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;
.super Ljava/lang/Enum;
.source "BatchMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/BatchMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

.field public static final enum PAUSED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

.field public static final enum PLAYING:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

.field public static final enum UNDEFINED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->UNDEFINED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    new-instance v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PLAYING:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    new-instance v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PAUSED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    sget-object v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->UNDEFINED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PLAYING:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->PAUSED:Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->$VALUES:[Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    return-object p0
.end method

.method public static values()[Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->$VALUES:[Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    invoke-virtual {v0}, [Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/resourcebrowser/BatchMediaPlayer$PlayState;

    return-object v0
.end method
