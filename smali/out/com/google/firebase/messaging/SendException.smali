.class public final Lcom/google/firebase/messaging/SendException;
.super Ljava/lang/Exception;
.source "com.google.firebase:firebase-messaging@@20.2.4"


# instance fields
.field private final errorCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/firebase/messaging/SendException;->parseErrorCode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/firebase/messaging/SendException;->errorCode:I

    return-void
.end method

.method private final parseErrorCode(Ljava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 7
    :cond_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_58

    goto :goto_48

    :sswitch_17
    const-string v2, "missing_to"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x1

    goto :goto_48

    :sswitch_21
    const-string v2, "messagetoobig"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x2

    goto :goto_48

    :sswitch_2b
    const-string v2, "invalid_parameters"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x0

    goto :goto_48

    :sswitch_35
    const-string v2, "toomanymessages"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x4

    goto :goto_48

    :sswitch_3f
    const-string v2, "service_not_available"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_48

    const/4 v1, 0x3

    :cond_48
    :goto_48
    if-eqz v1, :cond_56

    if-eq v1, v6, :cond_56

    if-eq v1, v5, :cond_55

    if-eq v1, v4, :cond_54

    if-eq v1, v3, :cond_53

    return v0

    :cond_53
    return v3

    :cond_54
    return v4

    :cond_55
    return v5

    :cond_56
    return v6

    nop

    :sswitch_data_58
    .sparse-switch
        -0x67e7c3ad -> :sswitch_3f
        -0x4cf26401 -> :sswitch_35
        -0x36e3eace -> :sswitch_2b
        -0x24c7160d -> :sswitch_21
        -0x5aa500c -> :sswitch_17
    .end sparse-switch
.end method
