.class Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveDatabases"
.end annotation


# static fields
.field private static final activeDatabases:Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;


# instance fields
.field private mActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2165
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->activeDatabases:Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2166
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/WeakHashMap;

    .line 2168
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2164
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static getInstance()Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;
    .locals 1

    .prologue
    .line 2169
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->activeDatabases:Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    return-object v0
.end method
