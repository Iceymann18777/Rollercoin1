.class public final Lcom/yandex/metrica/impl/ob/bm$z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "z"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "id"

    const-string v1, "start_time"

    const-string v2, "network_info"

    const-string v3, "report_request_parameters"

    const-string v4, "server_time_offset"

    const-string v5, "type"

    .line 237
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$z;->a:[Ljava/lang/String;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS sessions (id INTEGER,start_time INTEGER,network_info TEXT,report_request_parameters TEXT,server_time_offset INTEGER,type INTEGER DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    .line 273
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$z;->b:Ljava/lang/String;

    .line 310
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "reports"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v4, "id"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const/4 v3, 0x4

    const-string v5, "session_id"

    aput-object v5, v1, v3

    const/4 v3, 0x5

    const-string v5, "sessions"

    aput-object v5, v1, v3

    const/4 v3, 0x6

    aput-object v4, v1, v3

    const/4 v3, 0x7

    aput-object v4, v1, v3

    .line 324
    invoke-static {v2}, Lcom/yandex/metrica/impl/utils/e;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "(select count(%s.%s) from %s where %s.%s = %s.%s) = 0 and %s NOT IN (%s)"

    .line 311
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$z;->c:Ljava/lang/String;

    return-void
.end method
