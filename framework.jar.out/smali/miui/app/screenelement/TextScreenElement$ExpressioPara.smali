.class Lmiui/app/screenelement/TextScreenElement$ExpressioPara;
.super Lmiui/app/screenelement/TextScreenElement$FormatPara;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/TextScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressioPara"
.end annotation


# instance fields
.field private mExp:Lmiui/app/screenelement/Expression;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/Expression;)V
    .locals 1
    .parameter "exp"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/TextScreenElement$FormatPara;-><init>(Lmiui/app/screenelement/TextScreenElement$1;)V

    .line 82
    iput-object p1, p0, Lmiui/app/screenelement/TextScreenElement$ExpressioPara;->mExp:Lmiui/app/screenelement/Expression;

    .line 83
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/Variables;)Ljava/lang/Object;
    .locals 2
    .parameter "var"

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/app/screenelement/TextScreenElement$ExpressioPara;->mExp:Lmiui/app/screenelement/Expression;

    invoke-virtual {v0, p1}, Lmiui/app/screenelement/Expression;->evaluate(Lmiui/app/screenelement/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
