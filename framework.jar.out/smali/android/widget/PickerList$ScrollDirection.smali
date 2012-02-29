.class final enum Landroid/widget/PickerList$ScrollDirection;
.super Ljava/lang/Enum;
.source "PickerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PickerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/PickerList$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/PickerList$ScrollDirection;

.field public static final enum DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

.field public static final enum NONE:Landroid/widget/PickerList$ScrollDirection;

.field public static final enum UPWARDS:Landroid/widget/PickerList$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Landroid/widget/PickerList$ScrollDirection;

    const-string v1, "UPWARDS"

    invoke-direct {v0, v1, v2}, Landroid/widget/PickerList$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/PickerList$ScrollDirection;->UPWARDS:Landroid/widget/PickerList$ScrollDirection;

    new-instance v0, Landroid/widget/PickerList$ScrollDirection;

    const-string v1, "DOWNWARDS"

    invoke-direct {v0, v1, v3}, Landroid/widget/PickerList$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/PickerList$ScrollDirection;->DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

    new-instance v0, Landroid/widget/PickerList$ScrollDirection;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Landroid/widget/PickerList$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/PickerList$ScrollDirection;->NONE:Landroid/widget/PickerList$ScrollDirection;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/PickerList$ScrollDirection;

    sget-object v1, Landroid/widget/PickerList$ScrollDirection;->UPWARDS:Landroid/widget/PickerList$ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/PickerList$ScrollDirection;->DOWNWARDS:Landroid/widget/PickerList$ScrollDirection;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/PickerList$ScrollDirection;->NONE:Landroid/widget/PickerList$ScrollDirection;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/PickerList$ScrollDirection;->$VALUES:[Landroid/widget/PickerList$ScrollDirection;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/PickerList$ScrollDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 109
    const-class v0, Landroid/widget/PickerList$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/PickerList$ScrollDirection;

    return-object p0
.end method

.method public static values()[Landroid/widget/PickerList$ScrollDirection;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/widget/PickerList$ScrollDirection;->$VALUES:[Landroid/widget/PickerList$ScrollDirection;

    invoke-virtual {v0}, [Landroid/widget/PickerList$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/PickerList$ScrollDirection;

    return-object v0
.end method
