.class Lcom/yandex/metrica/impl/bd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/yandex/metrica/impl/bd$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 9

    .line 86
    new-instance v0, Lcom/yandex/metrica/impl/ob/df;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/df;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "_boundentrypreferences"

    .line 88
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/dl;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 90
    sget-object v1, Lcom/yandex/metrica/impl/ob/df;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/yandex/metrica/impl/ob/df;->d:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    if-eqz v1, :cond_53

    cmp-long v2, v5, v3

    if-eqz v2, :cond_53

    .line 93
    new-instance v2, Lcom/yandex/metrica/impl/a$a;

    invoke-direct {v2, v1, v5, v6}, Lcom/yandex/metrica/impl/a$a;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Lcom/yandex/metrica/impl/ob/df;->a(Lcom/yandex/metrica/impl/a$a;)Lcom/yandex/metrica/impl/ob/df;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/df;->k()V

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/yandex/metrica/impl/ob/df;->c:Lcom/yandex/metrica/impl/ob/dk;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Lcom/yandex/metrica/impl/ob/df;->d:Lcom/yandex/metrica/impl/ob/dk;

    .line 97
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/dk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_53
    return-void
.end method
