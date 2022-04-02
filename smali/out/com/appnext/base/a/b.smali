.class public Lcom/appnext/base/a/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final dx:Ljava/lang/String; = "appnext_dbs472"

.field private static final dy:I = 0xc

.field private static volatile dz:Lcom/appnext/base/a/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "appnext_dbs472"

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 32
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/appnext/base/a/b;
    .registers 3

    .line 20
    sget-object v0, Lcom/appnext/base/a/b;->dz:Lcom/appnext/base/a/b;

    if-nez v0, :cond_1b

    .line 21
    const-class v0, Lcom/appnext/base/a/b;

    monitor-enter v0

    .line 22
    :try_start_7
    sget-object v1, Lcom/appnext/base/a/b;->dz:Lcom/appnext/base/a/b;

    if-nez v1, :cond_16

    .line 23
    new-instance v1, Lcom/appnext/base/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/appnext/base/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/base/a/b;->dz:Lcom/appnext/base/a/b;

    .line 25
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 28
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/appnext/base/a/b;->dz:Lcom/appnext/base/a/b;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS ct"

    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS collected_data_table"

    .line 54
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS config_table"

    .line 55
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/appnext/base/a/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "create table ct ( p text, c integer)"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/appnext/base/a/c/b;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table config_table ( key text primary key, status text not null default \'off\', sample text not null default \'1\', sample_type text not null default \'\',cycle text not null default \'1\', cycle_type text not null default \'once\', service_key text not null default \'\', data text not null default \'\')"

    .line 45
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS ct"

    .line 1053
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS collected_data_table"

    .line 1054
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS config_table"

    .line 1055
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p0, p1}, Lcom/appnext/base/a/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_12

    :catchall_12
    return-void
.end method
