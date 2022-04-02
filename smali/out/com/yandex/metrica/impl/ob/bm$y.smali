.class public final Lcom/yandex/metrica/impl/ob/bm$y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    const-string v0, "id"

    const-string v1, "number"

    const-string v2, "name"

    const-string v3, "value"

    const-string v4, "type"

    const-string v5, "time"

    const-string v6, "session_id"

    const-string v7, "wifi_network_info"

    const-string v8, "cell_info"

    const-string v9, "location_info"

    const-string v10, "error_environment"

    const-string v11, "user_info"

    const-string v12, "session_type"

    const-string v13, "app_environment"

    const-string v14, "app_environment_revision"

    const-string v15, "truncated"

    const-string v16, "connection_type"

    const-string v17, "cellular_connection_type"

    const-string v18, "custom_type"

    const-string v19, "wifi_access_point"

    .line 138
    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$y;->a:[Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT \'\',cell_info TEXT DEFAULT \'\',location_info TEXT DEFAULT \'\',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/bl;->a:Lcom/yandex/metrica/impl/ob/bl;

    .line 202
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/bl;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_environment TEXT DEFAULT \'{}\',app_environment_revision INTEGER DEFAULT 0,truncated INTEGER DEFAULT 0,connection_type INTEGER DEFAULT 2,cellular_connection_type TEXT,custom_type INTEGER DEFAULT 0, wifi_access_point TEXT )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/bm$y;->b:Ljava/lang/String;

    return-void
.end method
