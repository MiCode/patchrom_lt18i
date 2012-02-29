.class public Lmiui/app/screenelement/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildWrapper"
.end annotation


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "ele"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lmiui/app/screenelement/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 50
    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lmiui/app/screenelement/Utils$GetChildWrapper;
    .locals 2
    .parameter "name"

    .prologue
    .line 57
    new-instance v0, Lmiui/app/screenelement/Utils$GetChildWrapper;

    iget-object v1, p0, Lmiui/app/screenelement/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    invoke-static {v1, p1}, Lmiui/app/screenelement/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/screenelement/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmiui/app/screenelement/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-object v0
.end method
