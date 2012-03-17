.class Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;
.super Ljava/lang/Object;
.source "ProviderAccessGateway.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryTask"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private final mProtection:[Ljava/lang/String;

.field private final mSelection:Ljava/lang/String;

.field private final mSortOrder:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "resolver"
    .parameter "uri"
    .parameter "protection"
    .parameter "selection"
    .parameter "sortOrder"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 135
    iput-object p2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mUri:Landroid/net/Uri;

    .line 136
    iput-object p3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mProtection:[Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mSelection:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mSortOrder:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mProtection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera3d/viewer/service/ProviderAccessGateway$QueryTask;->mCursor:Landroid/database/Cursor;

    .line 144
    return-void
.end method
