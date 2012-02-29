.class Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ZipFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ZipFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionSAXHandler"
.end annotation


# instance fields
.field private nvp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;->nvp:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/resourcebrowser/ZipFileHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;->nvp:Ljava/util/HashMap;

    iget-object v1, p0, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public getElementEntries()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;->nvp:Ljava/util/HashMap;

    return-object v0
.end method
