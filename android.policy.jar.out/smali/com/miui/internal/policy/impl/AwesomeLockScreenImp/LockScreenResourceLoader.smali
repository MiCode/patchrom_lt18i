.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenResourceLoader;
.super Ljava/lang/Object;
.source "LockScreenResourceLoader.java"

# interfaces
.implements Lmiui/app/screenelement/ResourceManager$ResourceLoader;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LockScreenResourceLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmapInfo(Ljava/lang/String;)Lmiui/app/screenelement/ResourceManager$BitmapInfo;
    .locals 7
    .parameter "src"

    .prologue
    const/4 v6, 0x0

    .line 27
    invoke-static {p1, v6}, Lmiui/content/res/ThemeResources;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v2

    .line 28
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 30
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 31
    .local v3, padding:Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v4, Lmiui/app/screenelement/ResourceManager$BitmapInfo;

    invoke-direct {v4, v0, v3}, Lmiui/app/screenelement/ResourceManager$BitmapInfo;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 43
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #padding:Landroid/graphics/Rect;
    :goto_0
    return-object v4

    .line 33
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 34
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "ResourceManager"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_0
    :goto_1
    move-object v4, v6

    .line 43
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v4

    .line 37
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 36
    :goto_2
    throw v4

    .line 38
    :catch_1
    move-exception v5

    goto :goto_2

    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v3       #padding:Landroid/graphics/Rect;
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 11
    .parameter "src"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x1

    const-string v8, "ResourceManager"

    .line 74
    const/4 v8, 0x1

    new-array v6, v8, [I

    .line 75
    .local v6, size:[I
    invoke-static {p1, v6}, Lmiui/content/res/ThemeResources;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v3

    .line 76
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 77
    const/high16 v0, 0x1

    .line 78
    .local v0, COUNT:I
    new-array v1, v9, [B

    .line 80
    .local v1, buff:[B
    :try_start_0
    new-instance v4, Landroid/os/MemoryFile;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget v9, v6, v9

    invoke-direct {v4, v8, v9}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 81
    .local v4, mf:Landroid/os/MemoryFile;
    const/4 v5, -0x1

    .line 82
    .local v5, read:I
    const/4 v7, 0x0

    .line 83
    .local v7, start:I
    :goto_0
    const/4 v8, 0x0

    const/high16 v9, 0x1

    invoke-virtual {v3, v1, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    .line 84
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v7, v5}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 85
    add-int/2addr v7, v5

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v4}, Landroid/os/MemoryFile;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-lez v8, :cond_2

    .line 95
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    move-object v8, v4

    .line 101
    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v4           #mf:Landroid/os/MemoryFile;
    .end local v5           #read:I
    .end local v7           #start:I
    :goto_2
    return-object v8

    .line 89
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 90
    .local v2, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v8, "ResourceManager"

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0           #COUNT:I
    .end local v1           #buff:[B
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    :goto_3
    move-object v8, v10

    .line 101
    goto :goto_2

    .line 91
    .restart local v0       #COUNT:I
    .restart local v1       #buff:[B
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 92
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    const-string v8, "ResourceManager"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 96
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    goto :goto_3

    .line 94
    :catchall_0
    move-exception v8

    .line 95
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 94
    :goto_4
    throw v8

    .line 96
    :catch_3
    move-exception v9

    goto :goto_4

    .restart local v4       #mf:Landroid/os/MemoryFile;
    .restart local v5       #read:I
    .restart local v7       #start:I
    :catch_4
    move-exception v8

    goto :goto_1

    .line 95
    :cond_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3
.end method

.method public getManifestRoot()Lorg/w3c/dom/Element;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 51
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 52
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    const-string v6, "manifest.xml"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lmiui/content/res/ThemeResources;->getAwesomeLockscreenFileStream(Ljava/lang/String;[I)Ljava/io/InputStream;

    move-result-object v4

    .line 53
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 54
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 55
    .local v5, root:Lorg/w3c/dom/Element;
    const-string v6, "LockScreenResourceLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "root:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Lockscreen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    .line 69
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :goto_0
    return-object v6

    .line 59
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 60
    .local v3, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .end local v3           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_1
    move-object v6, v9

    .line 69
    goto :goto_0

    .line 61
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 62
    .local v3, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 63
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 64
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 66
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
