.class Lmiui/app/screenelement/VariableBinderManager$Variable;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/VariableBinderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field public mColumn:I

.field public mName:Ljava/lang/String;

.field public mRow:I

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager$Variable;->load(Lorg/w3c/dom/Element;)V

    .line 78
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    const-string v0, "VariableBinderManager"

    const-string v1, "Variable node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$Variable;->mName:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager$Variable;->mType:Ljava/lang/String;

    .line 86
    const-string v0, "column"

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/VariableBinderManager$Variable;->mColumn:I

    .line 87
    const-string v0, "row"

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/VariableBinderManager$Variable;->mRow:I

    .line 88
    return-void
.end method
