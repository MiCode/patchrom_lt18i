.class Lmiui/app/resourcebrowser/ResourceFolder$1;
.super Ljava/lang/Object;
.source "ResourceFolder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/resourcebrowser/ResourceFolder;->sortResource(Ljava/util/List;Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/resourcebrowser/ResourceFolder;

.field final synthetic val$folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;


# direct methods
.method constructor <init>(Lmiui/app/resourcebrowser/ResourceFolder;Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lmiui/app/resourcebrowser/ResourceFolder$1;->this$0:Lmiui/app/resourcebrowser/ResourceFolder;

    iput-object p2, p0, Lmiui/app/resourcebrowser/ResourceFolder$1;->val$folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lmiui/app/resourcebrowser/ResourceFolder$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 179
    :try_start_0
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder$1;->val$folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    iget-wide v3, v3, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->modifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 180
    .local v1, time1:Ljava/lang/Long;
    iget-object v3, p0, Lmiui/app/resourcebrowser/ResourceFolder$1;->val$folderInfo:Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;

    iget-object v3, v3, Lmiui/app/resourcebrowser/ResourceHelper$FolderInfo;->files:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;

    iget-wide v3, p0, Lmiui/app/resourcebrowser/ResourceHelper$FileInfo;->modifiedTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 181
    .local v2, time2:Ljava/lang/Long;
    invoke-virtual {v2, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 183
    .end local v1           #time1:Ljava/lang/Long;
    .end local v2           #time2:Ljava/lang/Long;
    :goto_0
    return v3

    .line 182
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
