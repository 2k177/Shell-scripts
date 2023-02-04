#String Length

string="This is a string.."
echo ${#string} #18

#Index
STRINGG="I loved today's meal"
SUBSTR="Iat"
echo ${#STRINGG} #20
# 1 is the position of the first 'I' in $STRING
expr index "$STRINGG" "$SUBSTR" #1

#Substring Extraction
STR="Feeling blessed"
POS=1
LEN=3
echo ${STR:$POS:$LEN}  #eel

#If :$LEN is omitted, extract substring from $POS to end of line
echo ${STR:$POS}  #eeling blessed

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
echo $COMMA2
LENGTH=`expr $COMMA2 - 6 - 1`
echo $LENGTH
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

#Substring Replacement
STRING="to be or not to be"
echo ${STRING[@]/be/eat}

#Replace all occurrences of substring
STRING="to be or not to be"
echo ${STRING[@]//be/eat}        # to eat or not to eat

#Delete all occurrences of substring (replace with empty string)
STRING="to be or not to be"
echo ${STRING[@]//not/}

#Replace occurrence of substring if at the beginning of $STRING
STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now}

#Replace occurrence of substring if at the end of $STRING
STRING="to be or not to be"
echo ${STRING[@]/%be/eat}        # to be or not to eat


#replace occurrence of substring with shell command output
STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}    # to be or not to be on 2022-06-14