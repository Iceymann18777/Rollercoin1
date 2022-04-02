.class Lcom/yandex/metrica/impl/ob/bm$r;
.super Lcom/yandex/metrica/impl/ob/bm$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "r"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 909
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$l;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 909
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$r;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)"

    .line 913
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE reports"

    .line 916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN custom_type"

    .line 917
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER DEFAULT 0"

    .line 918
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
