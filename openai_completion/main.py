import openai
import os
import argparse
import sys


def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('--max_tokens', type=int, default=200,
                      help='max_tokens (openai.Completion parameter)')
  parser.add_argument('--temperature', type=float, default=0.3,
                      help='temperature (openai.Completion parameter)')
  parser.add_argument('--engine', type=str, default='text-curie-001',
                      help='engine (openai.Completion parameter)')
  args = parser.parse_args()

  apikey = os.environ.get('OPENAI_API_KEY', None)
  if not apikey:
    raise RuntimeError('OPENAI_API_KEY environment variable not set.')

  openai.api_key = apikey

  lines = []
  for line in sys.stdin:
    lines.append(line)
  input = ''.join(lines)

  response = openai.Completion.create(
      engine=args.engine,
      prompt=input,
      temperature=args.temperature,
      max_tokens=args.max_tokens)

  print('\nResponse:')

  choices = response['choices']
  for response_key in response:
    if response_key == 'choices':
      continue
    print(f'{response_key} = {response[response_key]}')

  for ci, choice in enumerate(choices):
    print(f'choices[{ci}]:')
    print(choice)


if __name__ == '__main__':
  main()
