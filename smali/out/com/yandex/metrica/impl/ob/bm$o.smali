.class Lcom/yandex/metrica/impl/ob/bm$o;
.super Lcom/yandex/metrica/impl/ob/bm$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT \'\',cell_info TEXT DEFAULT \'\',location_info TEXT DEFAULT \'\',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    .line 833
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_environment TEXT DEFAULT \'{}\',app_environment_revision INTEGER DEFAULT 0 )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$o;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 817
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$l;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 817
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$o;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "environment"

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALTER TABLE reports"

    .line 841
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ADD COLUMN app_environment"

    .line 842
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TEXT DEFAULT \'{}\'"

    .line 843
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ADD COLUMN app_environment_revision"

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER DEFAULT 0"

    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE reports RENAME TO reports_backup"

    .line 855
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 856
    sget-object v1, Lcom/yandex/metrica/impl/ob/bm$o;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_41
    const-string v2, "SELECT * FROM reports_backup"

    .line 859
    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_73

    .line 860
    :goto_47
    :try_start_47
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 861
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 862
    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 863
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 864
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "error_environment"

    .line 865
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reports"

    .line 866
    invoke-virtual {p1, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_70

    goto :goto_47

    .line 869
    :cond_67
    invoke-static {v2}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    const-string v0, "DROP TABLE reports_backup"

    .line 871
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_70
    move-exception p1

    move-object v1, v2

    goto :goto_74

    :catchall_73
    move-exception p1

    .line 869
    :goto_74
    invoke-static {v1}, Lcom/yandex/metrica/impl/bk;->a(Landroid/database/Cursor;)V

    goto :goto_79

    :goto_78
    throw p1

    :goto_79
    goto :goto_78
.end method
