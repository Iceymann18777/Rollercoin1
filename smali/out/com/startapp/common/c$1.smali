.class Lcom/startapp/common/c$1;
.super Landroid/telephony/PhoneStateListener;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/common/c;->c()Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/common/c;


# direct methods
.method constructor <init>(Lcom/startapp/common/c;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/startapp/common/c$1;->a:Lcom/startapp/common/c;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 6

    const-string v0, "e105"

    .line 62
    const-class v1, Landroid/telephony/SignalStrength;

    :try_start_4
    const-string v2, "getLevel"

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/startapp/common/c$1;->a:Lcom/startapp/common/c;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/startapp/common/c;->a:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_1f} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1f} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_1f} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_1f} :catch_20

    goto :goto_35

    .line 74
    :catch_20
    iget-object p1, p0, Lcom/startapp/common/c$1;->a:Lcom/startapp/common/c;

    iput-object v0, p1, Lcom/startapp/common/c;->a:Ljava/lang/String;

    goto :goto_35

    .line 72
    :catch_25
    iget-object p1, p0, Lcom/startapp/common/c$1;->a:Lcom/startapp/common/c;

    iput-object v0, p1, Lcom/startapp/common/c;->a:Ljava/lang/String;

    goto :goto_35

    .line 70
    :catch_2a
    iget-object p1, p0, Lcom/startapp/common/c$1;->a:Lcom/startapp/common/c;

    iput-object v0, p1, Lcom/startapp/common/c;->a:Ljava/lang/String;

    goto :goto_35

    .line 68
    :catch_2f
    iget-object p1, p0, Lcom/startapp/common/c$1;->a:Lcom/startapp/common/c;

    const-string v0, "e104"

    iput-object v0, p1, Lcom/startapp/common/c;->a:Ljava/lang/String;

    :goto_35
    return-void
.end method
