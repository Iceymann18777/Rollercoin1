.class Lcom/yandex/metrica/impl/ob/bm$h;
.super Lcom/yandex/metrica/impl/ob/bm$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 785
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$l;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 785
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/bm$h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "DROP TABLE IF EXISTS api_level_info"

    .line 789
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS device_id_info"

    .line 790
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
