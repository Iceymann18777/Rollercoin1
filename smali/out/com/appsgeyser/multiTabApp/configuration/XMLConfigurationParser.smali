.class public Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;
.super Ljava/lang/Object;
.source "XMLConfigurationParser.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;->context:Landroid/content/Context;

    return-void
.end method

.method private getConfigurationStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 47
    :catch_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Couldn\'t find configuration file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 29
    :try_start_4
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-direct {v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;-><init>()V

    .line 31
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->removeAll()V

    .line 32
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 33
    new-instance v3, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;

    invoke-direct {v3, v2, v1}, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;-><init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    .line 34
    invoke-direct {p0}, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationParser;->getConfigurationStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_25

    return-object v2

    .line 38
    :catch_25
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Wrong format of configuration.xml file"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
