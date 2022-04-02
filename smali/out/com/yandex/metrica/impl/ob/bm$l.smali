.class abstract Lcom/yandex/metrica/impl/ob/bm$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/database/sqlite/SQLiteDatabase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method
