.class public Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "VastVideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VastVideoConfigTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 938
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 960
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_10

    .line 961
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v0

    .line 966
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    .line 968
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_9

    .line 947
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 950
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Class;)V

    return-void
.end method
