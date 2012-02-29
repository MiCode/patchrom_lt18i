.class Lmiui/app/screenelement/TextScreenElement$StringVarPara;
.super Lmiui/app/screenelement/TextScreenElement$FormatPara;
.source "TextScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/TextScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVariable:Lmiui/app/screenelement/Variable;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/Variable;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/screenelement/TextScreenElement$FormatPara;-><init>(Lmiui/app/screenelement/TextScreenElement$1;)V

    .line 93
    iput-object p1, p0, Lmiui/app/screenelement/TextScreenElement$StringVarPara;->mVariable:Lmiui/app/screenelement/Variable;

    .line 94
    return-void
.end method


# virtual methods
.method public evaluate(Lmiui/app/screenelement/Variables;)Ljava/lang/Object;
    .locals 2
    .parameter "var"

    .prologue
    .line 98
    iget-object v0, p0, Lmiui/app/screenelement/TextScreenElement$StringVarPara;->mVariable:Lmiui/app/screenelement/Variable;

    invoke-virtual {v0}, Lmiui/app/screenelement/Variable;->getObjName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/screenelement/TextScreenElement$StringVarPara;->mVariable:Lmiui/app/screenelement/Variable;

    invoke-virtual {v1}, Lmiui/app/screenelement/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmiui/app/screenelement/Variables;->getStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
