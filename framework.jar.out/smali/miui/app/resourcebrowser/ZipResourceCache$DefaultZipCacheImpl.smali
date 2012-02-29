.class public final Lmiui/app/resourcebrowser/ZipResourceCache$DefaultZipCacheImpl;
.super Lmiui/app/resourcebrowser/ZipResourceCache;
.source "ZipResourceCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/resourcebrowser/ZipResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultZipCacheImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lmiui/app/resourcebrowser/ZipResourceCache;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ZipResourceCache$DefaultZipCacheImpl;->readCache(Ljava/io/ObjectInputStream;)V

    .line 129
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ZipResourceCache$DefaultZipCacheImpl;->writeCache(Ljava/io/ObjectOutputStream;)V

    .line 125
    return-void
.end method
