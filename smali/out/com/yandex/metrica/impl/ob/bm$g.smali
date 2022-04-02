.class Lcom/yandex/metrica/impl/ob/bm$g;
.super Lcom/yandex/metrica/impl/ob/bm$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 770
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$l;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 770
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS api_level_info (API_LEVEL INT )"

    .line 775
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1095
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "API_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "api_level_info"

    .line 776
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method
