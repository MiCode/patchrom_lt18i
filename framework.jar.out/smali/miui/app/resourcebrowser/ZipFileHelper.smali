.class public Lmiui/app/resourcebrowser/ZipFileHelper;
.super Ljava/lang/Object;
.source "ZipFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/resourcebrowser/ZipFileHelper$1;,
        Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getZipResourceDescribeInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .parameter "zipfilePath"
    .parameter "xmlEntryName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, zipfile:Ljava/util/zip/ZipFile;
    invoke-static {v1, p1}, Lmiui/app/resourcebrowser/ZipFileHelper;->getZipResourceDescribeInfo(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1           #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getZipResourceDescribeInfo(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .parameter "zipfile"
    .parameter "xmlEntryName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 51
    .local v0, entry:Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    move-object v3, v6

    .line 52
    .local v3, is:Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 53
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 54
    .local v5, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 55
    .local v4, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;-><init>(Lmiui/app/resourcebrowser/ZipFileHelper$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1           #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    .local v2, handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    :try_start_1
    invoke-virtual {v4, v3, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 62
    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    .end local v2           #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v1       #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;->getElementEntries()Ljava/util/HashMap;

    move-result-object v6

    :goto_2
    return-object v6

    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    :cond_1
    move-object v3, v7

    .line 51
    goto :goto_0

    .end local v0           #entry:Ljava/util/zip/ZipEntry;
    :cond_2
    move-object v6, v7

    .line 62
    goto :goto_2

    .line 59
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v1           #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    .restart local v0       #entry:Ljava/util/zip/ZipEntry;
    .restart local v2       #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #sp:Ljavax/xml/parsers/SAXParser;
    .restart local v5       #spf:Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2           #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    .restart local v1       #handler:Lmiui/app/resourcebrowser/ZipFileHelper$DescriptionSAXHandler;
    goto :goto_1
.end method
