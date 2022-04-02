.class Lcom/yandex/metrica/impl/NativeCrashesHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/NativeCrashesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ay;

.field private final b:Lcom/yandex/metrica/impl/NativeCrashesHelper;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/NativeCrashesHelper;)V
    .registers 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->b:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    .line 122
    iput-object p1, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->a:Lcom/yandex/metrica/impl/ay;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->b:Lcom/yandex/metrica/impl/NativeCrashesHelper;

    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Lcom/yandex/metrica/impl/NativeCrashesHelper;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/yandex/metrica/impl/NativeCrashesHelper;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_4e

    aget-object v4, v1, v3

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    :try_start_24
    invoke-static {v4}, Lcom/yandex/metrica/impl/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-static {v5}, Lcom/yandex/metrica/impl/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 137
    iget-object v6, p0, Lcom/yandex/metrica/impl/NativeCrashesHelper$a;->a:Lcom/yandex/metrica/impl/ay;

    invoke-virtual {v6, v5}, Lcom/yandex/metrica/impl/ay;->a(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_43
    .catchall {:try_start_24 .. :try_end_33} :catchall_39

    .line 142
    :cond_33
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_48

    :catchall_39
    move-exception v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 144
    throw v0

    .line 142
    :catch_43
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_48
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4e
    return-void
.end method
