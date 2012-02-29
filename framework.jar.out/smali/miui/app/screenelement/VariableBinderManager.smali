.class public Lmiui/app/screenelement/VariableBinderManager;
.super Ljava/lang/Object;
.source "VariableBinderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/screenelement/VariableBinderManager$1;,
        Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;,
        Lmiui/app/screenelement/VariableBinderManager$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mContentProviderBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lmiui/app/screenelement/ScreenContext;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V
    .locals 1
    .parameter "node"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/VariableBinderManager;->mContentProviderBinders:Ljava/util/ArrayList;

    .line 40
    iput-object p2, p0, Lmiui/app/screenelement/VariableBinderManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    .line 41
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager;->load(Lorg/w3c/dom/Element;)V

    .line 42
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    const-string v2, "node is null"

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string v0, "VariableBinderManager"

    const-string v1, "node is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lmiui/app/screenelement/ScreenElementLoadException;

    const-string v1, "node is null"

    invoke-direct {v0, v2}, Lmiui/app/screenelement/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Lmiui/app/screenelement/VariableBinderManager;->loadContentProviderBinders(Lorg/w3c/dom/Element;)V

    .line 62
    return-void
.end method

.method private loadContentProviderBinders(Lorg/w3c/dom/Element;)V
    .locals 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v2, "ContentProviderBinder"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 66
    .local v0, binders:Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 67
    iget-object v3, p0, Lmiui/app/screenelement/VariableBinderManager;->mContentProviderBinders:Ljava/util/ArrayList;

    new-instance v4, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/app/screenelement/VariableBinderManager;->mContext:Lmiui/app/screenelement/ScreenContext;

    invoke-direct {v4, v2, v5}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/app/screenelement/ScreenContext;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 50
    iget-object v2, p0, Lmiui/app/screenelement/VariableBinderManager;->mContentProviderBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    .line 51
    .local v0, binder:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->finish()V

    goto :goto_0

    .line 53
    .end local v0           #binder:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lmiui/app/screenelement/VariableBinderManager;->mContentProviderBinders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;

    .line 45
    .local v0, binder:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
    invoke-virtual {v0}, Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;->init()V

    goto :goto_0

    .line 47
    .end local v0           #binder:Lmiui/app/screenelement/VariableBinderManager$ContentProviderBinder;
    :cond_0
    return-void
.end method
