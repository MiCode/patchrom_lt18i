.class public Lmiui/app/resourcebrowser/ResourceSet;
.super Ljava/util/ArrayList;
.source "ResourceSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lmiui/app/resourcebrowser/Resource;",
        ">;"
    }
.end annotation


# static fields
.field private static instances:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/app/resourcebrowser/ResourceSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mMetaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/resourcebrowser/ResourceSet;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/app/resourcebrowser/ResourceSet;->mMetaData:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lmiui/app/resourcebrowser/ResourceSet;
    .locals 3
    .parameter "id"

    .prologue
    .line 17
    const-class v1, Lmiui/app/resourcebrowser/ResourceSet;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lmiui/app/resourcebrowser/ResourceSet;->instances:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/resourcebrowser/ResourceSet;

    .line 18
    .local v0, instance:Lmiui/app/resourcebrowser/ResourceSet;
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lmiui/app/resourcebrowser/ResourceSet;

    .end local v0           #instance:Lmiui/app/resourcebrowser/ResourceSet;
    invoke-direct {v0}, Lmiui/app/resourcebrowser/ResourceSet;-><init>()V

    .line 20
    .restart local v0       #instance:Lmiui/app/resourcebrowser/ResourceSet;
    sget-object v2, Lmiui/app/resourcebrowser/ResourceSet;->instances:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    monitor-exit v1

    return-object v0

    .line 17
    .end local v0           #instance:Lmiui/app/resourcebrowser/ResourceSet;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public getMetaData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 40
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceSet;->mMetaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAll(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, resourceSet:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/Resource;>;"
    invoke-virtual {p0}, Lmiui/app/resourcebrowser/ResourceSet;->clear()V

    .line 32
    invoke-virtual {p0, p1}, Lmiui/app/resourcebrowser/ResourceSet;->addAll(Ljava/util/Collection;)Z

    .line 33
    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 36
    iget-object v0, p0, Lmiui/app/resourcebrowser/ResourceSet;->mMetaData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
